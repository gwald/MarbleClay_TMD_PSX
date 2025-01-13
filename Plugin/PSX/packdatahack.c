// tcc packdatahack.c -o packdatahack.exe
// 32bit program!


#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h> // tolower/upper


int main(int argc, char *argv[])
{
	
	FILE *file_p = NULL;
	char buff[126];
	unsigned int sizeTMD=0;
	unsigned int hasTIM=0;
	
	printf("\npackdatahack.exe is a win32/linux replacement of Sony's packdata.exe\n");
			
	printf("Usage: packdatahack.exe projectName (no extensions)\n   projectName is the name use to find .TMD and .TIM\n");
		
	if(argc < 2)
	{
		return 1;
	}
	
	printf("Running: packdatahack.exe %s\n\n",argv[1] );
		
	// do TMD stuff	
	{
		sprintf(buff, "%s.tmd",argv[1] );
		
		file_p = fopen(buff, "rb");
		if (!file_p)
		{
			printf("ERROR: Could not find input file '%s' \nCheck filename!\n", buff);
			return (1);
		}
		
		
		fseek(file_p,0,SEEK_END);
		sizeTMD = (unsigned int) ftell(file_p);
		printf("size of TMD: %d \n", sizeTMD);
			
		fclose(file_p);
	}



	// do TIM stuff	
	{
		sprintf(buff, "%s0.tim",argv[1] );
		printf("Checking for a TIM file: %s\n", buff);
		file_p = fopen(buff, "rb");
		if (file_p)
		{
			printf("Tim 0 has been found! %s\n", buff);
			printf("Reminder: The PlayStation viewer can only use 1 single texture TIM file.\n");
			
			hasTIM=1;
			fclose(file_p);
			
		}
		else
			printf("The TIM file was not found, this is fine if you didn't use a texture file.\n");
		
		
	}
	
	
	
	
	// create header first
	
	sprintf(buff, "%s.tmp",argv[1] );
		
	file_p = fopen(buff, "wb");
	
	//first 4bytes is the TMD size.
	fwrite(&sizeTMD, sizeof(int),1, file_p );
	
	// next 4bytes is a boolean for TIM file or not.
	fwrite(&hasTIM, sizeof(int),1, file_p );
	
	fflush(file_p); //force update
	fclose(file_p);
	

// doing pack now
		
	if(hasTIM)
	{
		
		sprintf(buff, "C:\\MarbleCLAY\\Plugin\\PSX\\cat.exe %s.tmp %s.tmd %s0.tim > %s.pck",argv[1],argv[1],argv[1],argv[1] );
	
		
	}
	else
	{
		sprintf(buff, "C:\\MarbleCLAY\\Plugin\\PSX\\cat.exe %s.tmp %s.tmd > %s.pck",argv[1],argv[1],argv[1] );
	
		
	}

	// execute cmd line
	system(buff);
	
	sprintf(buff, "%s.tmp",argv[1] );
	unlink(buff);
	
	// do check pack file exists	
	{
		sprintf(buff, "%s.pck",argv[1] );
		printf("Checking if pack file was created okay: %s\n", buff);
		file_p = fopen(buff, "rb");
		if (file_p)
		{
			int sz;
			
			printf("Pack file was created okay! %s\n", buff);
			
			fseek(file_p, 0L, SEEK_END);
			sz = ftell(file_p);
			fclose(file_p);
			
			if(sz == 0)
			{
				printf("Pack file %s has size of zero!!!\n ERROR!!\n", buff);
				return 1;
			}
			else
				printf("Pack file good %dKb\n", sz/1024);
			
			
		}
		else
			printf("The TIM file was not found, this is fine if you didn't use a texture file.\n");
		
		
	}
	
	
	
	
	
	printf("packdatahack.exe finished correctly!\n");
	
}