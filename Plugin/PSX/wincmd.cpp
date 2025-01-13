#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <strsafe.h>
//#include <afx.h>


const char g_szClassName[] = "myWindowClass";
char str[1000]={0};
char buff[1000]={0};
unsigned long exitCode=0;


//from: https://www.codeproject.com/tips/333559/createprocess-and-wait-for-result
//////////////////////////////////////////////////////////////////////////////////////////////////
// Executes the given command using CreateProcess() and WaitForSingleObject().
// Returns FALSE if the command could not be executed or if the exit code could not be determined.
BOOL executeCommandLine(void)
{
        PROCESS_INFORMATION processInformation = {0};
        STARTUPINFO startupInfo                = {0};
        startupInfo.cb                         = sizeof(startupInfo);
        int nStrBuffer                        = 1000;   // cmdLine.GetLength() + 50;


        // Create the process
        BOOL result = CreateProcess(NULL, str ,
                        NULL, NULL, FALSE,
                        NORMAL_PRIORITY_CLASS ,
                        NULL, NULL, &startupInfo, &processInformation);
        //cmdLine.ReleaseBuffer(); CREATE_NO_WINDOW


        if (!result)
        {
                // CreateProcess() failed
                // Get the error from the system
                LPVOID lpMsgBuf;
                DWORD dw = GetLastError();
                FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                                NULL, dw, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPTSTR) &lpMsgBuf, 0, NULL);

                // Display the error
                //      CString strError = (LPTSTR) lpMsgBuf;
                //    TRACE(_T("::executeCommandLine() failed at CreateProcess()\nCommand=%s\nMessage=%s\n\n"), cmdLine, (char *)lpMsgBuf);

                // Free resources created by the system
                LocalFree(lpMsgBuf);

                // We failed.
                return 1;
        }
        else
        {
                // Successfully created the process.  Wait for it to finish.
                WaitForSingleObject( processInformation.hProcess, INFINITE );

                // Get the exit code.
                result = GetExitCodeProcess(processInformation.hProcess, &exitCode);

                // Close the handles.
                CloseHandle( processInformation.hProcess );
                CloseHandle( processInformation.hThread );


                // We succeeded.
                return 0;
        }
}




// Step 4: the Window Procedure
LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
        switch(msg)
        {
        case WM_CLOSE:
                DestroyWindow(hwnd);
                break;
        case WM_DESTROY:
                PostQuitMessage(0);
                break;
        default:
                return DefWindowProc(hwnd, msg, wParam, lParam);
        }
        return 0;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                LPSTR lpCmdLine, int nCmdShow)
{
        WNDCLASSEX wc;
        HWND hwnd;
        MSG Msg;

        LPWSTR *szArglist;
        int nArgs;
        int i;


        //Step 1: Registering the Window Class
        wc.cbSize                = sizeof(WNDCLASSEX);
        wc.style                 = 0;
        wc.lpfnWndProc   = WndProc;
        wc.cbClsExtra    = 0;
        wc.cbWndExtra    = 0;
        wc.hInstance     = hInstance;
        wc.hIcon                 = LoadIcon(NULL, IDI_APPLICATION);
        wc.hCursor               = LoadCursor(NULL, IDC_ARROW);
        wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
        wc.lpszMenuName  = NULL;
        wc.lpszClassName = g_szClassName;
        wc.hIconSm               = LoadIcon(NULL, IDI_APPLICATION);

        if(!RegisterClassEx(&wc))
        {
                MessageBox(NULL, "Window Registration Failed!", "Error!",
                                MB_ICONEXCLAMATION | MB_OK);
                return 0;
        }

        // Step 2: Creating the Window
        hwnd = CreateWindowEx(
                        WS_EX_CLIENTEDGE,
                        g_szClassName,
                        "TEMP WINDOW... running cmd",
                        WS_OVERLAPPEDWINDOW,
                        CW_USEDEFAULT, CW_USEDEFAULT, 260, 120,
                        NULL, NULL, hInstance, NULL);

        if(hwnd == NULL)
        {
                MessageBox(NULL, "Window Creation Failed!", "Error!",
                                MB_ICONEXCLAMATION | MB_OK);
                return 0;
        }

        ShowWindow(hwnd, nCmdShow);
        UpdateWindow(hwnd);

        szArglist = CommandLineToArgvW(GetCommandLineW(), &nArgs);
        {





                if( NULL == szArglist )
                {
                        wprintf(L"CommandLineToArgvW failed\n");
                        return 0;
                }
                else if(nArgs > 1)
                {
                        sprintf(str, "cmd /K ");

                        for( i=1; i<nArgs; i++) // printf("%d: %ws\n", i, szArglist[i]);
                        {
                                wcstombs(buff, szArglist[i],1000);
                                sprintf(str, "%s %s",str, buff);
                                //  MessageBox(NULL, (char *) szArglist[i], "Error!",        MB_ICONEXCLAMATION | MB_OK);
                        }

                        //sprintf(str, "%s & pause", str);

                }
                else
                {

                        MessageBox(NULL, "wincmd: No parameters entered to run cmd! \nThis is a little windows exe which just passes paramaters straight to cmd.\nMake(4.X makefile) likes to capture cmd and not run it as a normal window. \nCoded in: Watcom v2 \nBy: mgarcia.org \nFEB-2021", "Error!",        MB_ICONEXCLAMATION | MB_OK);
                        return -1;
                }




                //endif

                // Free memory allocated for CommandLineToArgvW arguments.


                {

                        STARTUPINFO si = { sizeof(STARTUPINFO) };
                        PROCESS_INFORMATION pi;


                        if(0)
                                if (!CreateProcess("C:\\Windows\\System32\\cmd.exe",
                                                str,    NULL, NULL, 0, 0, NULL, NULL, &si, &pi))
                                {
                                        printf("CreateProcess failed (%d).\n", GetLastError());
                                        MessageBox(NULL, "CreateProcess failed", "Error!",        MB_ICONEXCLAMATION | MB_OK);
                                        return -1;
                                }



                }
                LocalFree(szArglist);


        }



        //  MessageBox(NULL, "fin", "fin!",        MB_ICONEXCLAMATION | MB_OK);





        // Step 3: The Message Loop
        if(0)
                while(GetMessage(&Msg, NULL, 0, 0) > 0)
                {
                        TranslateMessage(&Msg);
                        DispatchMessage(&Msg);
                }

        //return Msg.wParam;
        return executeCommandLine();
}
