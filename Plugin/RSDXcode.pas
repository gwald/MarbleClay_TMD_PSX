// Built with delph 7
// https://winworldpc.com/product/delphi/70 (Key included)
// Inside windows XP VM: https://archive.org/details/net-yaroze-dev-winxp-vm-2022
// Download MarbleSDK beta5.6 from http://escargot.la.coocan.jp/DownLoadFrm.html 
// or  https://web.archive.org/web/20160612052732/http://homepage3.nifty.com/escargot/DownLoadFrm.html  
// plugin's built in
// C:\MarbleSDK\Plugin\NetYaroze\*
// I'm not a very good pascal programmer, sorry :/
// If you improve this plugin, please share!
unit RSDXcode;
interface
uses
  Windows, SysUtils, Classes, Dialogs,MarbleSDK,MarbleSDKType;
  function Sscanf(const s: string; const fmt : string;                   const Pointers : array of Pointer) : Integer;
function WriteString( filestream : TFileStream; s :string): Boolean;
function Power2(Base, Exponent : Double) : Double;
function ObjectAttrString( obj : PCW_MeshObject; name : string; def : string) : String;
function ObjectAttrInteger( obj : PCW_MeshObject; name : string; def : integer) : Integer;
function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
function testQuad ( vertex1: TCW_VertexProxy;  vertex2: TCW_VertexProxy; vertex3: TCW_VertexProxy;  vertex4: TCW_VertexProxy): Real;
function RSDExporter(doc : PCW_Document; itemToExport: integer; filedirnamein :string; scale : real; launchNoPSX: integer) : Boolean;
function OBJExporter(doc : PCW_Document; itemToExport: integer; filedirnamein :string; scale : real) : Boolean;
function debugMat( s :string): Boolean;

var
file_header_info :string = '# created with RSD_Exporter (July 2024) for MarbleClay.';
	


	
implementation
function debugMat( s :string): Boolean;
var
  ch : Char;
begin
 //  ShowMessage(s);
  result := true;
end;
//from https://stackoverflow.com/questions/17118240/how-can-i-raise-a-number-to-a-power-in-delphi
{** A power function from Jack Lyle. Said to be more powerful than the
Pow function that comes with Delphi. }
function Power2(Base, Exponent : Double) : Double;
{ raises the base to the exponent }
CONST
cTiny = 1e-15;
VAR
Power : Double; { Value before sign correction }
BEGIN
Power := 0;
{ Deal with the near zero special cases }
IF (Abs(Base) < cTiny) THEN BEGIN
  Base := 0.0;
END; { IF }
IF (Abs(Exponent) < cTiny) THEN BEGIN
  Exponent := 0.0;
END; { IF }
{ Deal with the exactly zero cases }
IF (Base = 0.0) THEN BEGIN
  Power := 0.0;
END; { IF }
IF (Exponent = 0.0) THEN BEGIN
  Power := 1.0;
END; { IF }
{ Cover everything else }
IF ((Base < 0) AND (Exponent < 0)) THEN
    Power := 1/Exp(-Exponent*Ln(-Base))
ELSE IF ((Base < 0) AND (Exponent >= 0)) THEN
    Power := Exp(Exponent*Ln(-Base))
ELSE IF ((Base > 0) AND (Exponent < 0)) THEN
    Power := 1/Exp(-Exponent*Ln(Base))
ELSE IF ((Base > 0) AND (Exponent >= 0)) THEN
    Power := Exp(Exponent*Ln(Base));
{ Correct the sign }
IF ((Base < 0) AND (Frac(Exponent/2.0) <> 0.0)) THEN
  Result := -Power
ELSE
  Result := Power;
END; { FUNCTION Pow }
//from https://stackoverflow.com/questions/17118240/how-can-i-raise-a-number-to-a-power-in-delphi
function ObjectAttrInteger( obj : PCW_MeshObject; name : string; def : integer) : Integer;
var
  pval_buff : PChar;
  buffsize : integer;
begin
  result := def;
  // beta5.5
  buffsize := CWAPIs.GetObjectAttr( obj, PChar(name), nil, 0 );
  if buffsize > 0 then
  begin
    try
      GetMem(pval_buff, buffsize);
      try
        if CWAPIs.GetObjectAttr( obj, PChar(name), pval_buff, buffsize ) > 0 then
        begin
          result := StrToInt(PChar(pval_buff));
        end;
      finally
        FreeMem(pval_buff);
      end;
    except
      on E:EOutOfMemory do result := def;
    end;
  end;
end;
function ObjectAttrString( obj : PCW_MeshObject; name : string; def : string) : String;
var
  pval_buff : PChar;
  buffsize : integer;
begin
  result := def;
  // beta5.5
  buffsize := CWAPIs.GetObjectAttr( obj, PChar(name), nil, 0 );
  if buffsize > 0 then
  begin
    try
      GetMem(pval_buff, buffsize);
      try
        if CWAPIs.GetObjectAttr( obj, PChar(name), pval_buff, buffsize ) > 0 then
        begin
          result := PChar(pval_buff);
        end;
      finally
        FreeMem(pval_buff);
      end;
    except
      on E:EOutOfMemory do result := def;
    end;
  end;
end;
// from: https://stackoverflow.com/questions/9119999/getting-output-from-a-shell-dos-app-into-a-delphi-app
function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;
// from: https://stackoverflow.com/questions/9119999/getting-output-from-a-shell-dos-app-into-a-delphi-app
function testQuad ( vertex1: TCW_VertexProxy;  vertex2: TCW_VertexProxy; vertex3: TCW_VertexProxy;  vertex4: TCW_VertexProxy): Real;
  var
   x,y,z,x1,y1,z1,x2,y2,z2,x3,y3,z3,a1,b1,c1,a2,b2,c2,a,b,c,d: real;
	begin
					x1 := vertex2.x^;
					y1 := vertex2.y^;
					z1 := vertex2.z^;
					x2 := vertex3.x^;
					y2 := vertex3.y^;
					z2 := vertex3.z^;
					x3 := vertex4.x^;
					y3 := vertex4.y^;
					z3 := vertex4.z^;
					x := vertex1.x^;
					y := vertex1.y^;
					z := vertex1.z^;
	
					//print("prim set...")
				    a1 := x2 - x1;
					b1 := y2 - y1; 
					c1 := z2 - z1 ;
					a2 := x3 - x1 ;
					b2 := y3 - y1 ;
					c2 := z3 - z1; 
					
					//print("prim set 2...")
					
					a := b1 * c2 - b2 * c1; 
					b := a2 * c1 - a1 * c2 ;
					c := a1 * b2 - b1 * a2 ;
					d := (- a * x1 - b * y1 - c * z1); 
					//print("prim set3...")
					   
					// equation of plane is: a*x + b*y + c*z := 0 #
					   
					// checking if the 4th point satisfies
					// the above equation
					result := a * x + b * y + c * z + d;
		
  end;
// ---------------------------------------------------------------------------
// filestream Exporter
// ---------------------------------------------------------------------------
function WriteString( filestream : TFileStream; s :string): Boolean;
var
  ch : Char;
begin
  // // ShowMessage(s);
  filestream.Write(s[1],Length(s));
  ch := #13;
  filestream.Write(ch,1);
  ch := #10;
  filestream.Write(ch,1);
  result := true;
end;
// from http://www.delphigroups.info/2/6c/127019.html
{ Sscanf parses an input string. The parameters ...
    s - input string to parse
    fmt - 'C' scanf-like format string to control parsing
      %d - convert a Long Integer
      %f - convert an Extended Float
      %s - convert a string (delimited by spaces)
      other char - increment s pointer past "other char"
      space - does nothing
    Pointers - array of pointers to have values assigned
    result - number of variables actually assigned
    for example with ...
      Sscanf('Name. Bill   Time. 7:32.77   Age. 8',
             '. %s . %d:%f . %d', [@Name, @hrs, @min, @age]);
    You get ...
      Name = Bill  hrs = 7  min = 32.77  age = 8               
}
function Sscanf(const s: string; const fmt : string;
                      const Pointers : array of Pointer) : Integer;
var
  i,j,n,m : integer;
  s1      : string;
  L       : LongInt;
  X       : Extended;
  function GetInt : Integer;
  begin
    s1 := '';
    while (s[n] = ' ')  and (Length(s) > n) do inc(n);
    while (s[n] in ['0'..'9', '+', '-'])
      and (Length(s) >= n) do begin
      s1 := s1+s[n];
      inc(n);
    end;
    Result := Length(s1);
  end;
  function GetFloat : Integer;
  begin
    s1 := '';
    while (s[n] = ' ')  and (Length(s) > n) do inc(n);
    while (s[n] in ['0'..'9', '+', '-', '.', 'e', 'E'])
      and (Length(s) >= n) do begin
      s1 := s1+s[n];
      inc(n);
    end;
    Result := Length(s1);
  end;
  function GetString : Integer;
  begin
    s1 := '';
    while (s[n] = ' ')  and (Length(s) > n) do inc(n);
    while (s[n] <> ' ') and (Length(s) >= n) do
    begin
      s1 := s1+s[n];
      inc(n);
    end;
    Result := Length(s1);
  end;
  function ScanStr(c : Char) : Boolean;
  begin
    while (s[n] <> c) and (Length(s) > n) do inc(n);
    inc(n);
    If (n <= Length(s)) then Result := True
    else Result := False;
  end;
  function GetFmt : Integer;
  begin
    Result := -1;
    while (TRUE) do begin
      while (fmt[m] = ' ') and (Length(fmt) > m) do inc(m);
      if (m >= Length(fmt)) then break;
      if (fmt[m] = '%') then begin
        inc(m);
        case fmt[m] of
          'd': Result := vtInteger;
          'f': Result := vtExtended;
          's': Result := vtString;
        end;
        inc(m);
        break;
      end;
      if (ScanStr(fmt[m]) = False) then break;
      inc(m);
    end;
  end;
begin
  n := 1;
  m := 1;
  Result := 0;
  for i := 0 to High(Pointers) do begin
    j := GetFmt;
    case j of
      vtInteger : begin
        if GetInt > 0 then begin
          L := StrToInt(s1);
          Move(L, Pointers[i]^, SizeOf(LongInt));
          inc(Result);
        end
        else break;
      end;
      vtExtended : begin
        if GetFloat > 0 then begin
          X := StrToFloat(s1);
          Move(X, Pointers[i]^, SizeOf(Extended));
          inc(Result);
        end
        else break;
      end;
      vtString : begin
        if GetString > 0 then begin
          Move(s1, Pointers[i]^, Length(s1)+1);
          inc(Result);
        end
        else break;
      end;
      else break;
    end;
  end;
end; 
// function RSDExporter(doc : PCW_Document; info : PCW_TransporterInfo) : Boolean;
function RSDExporter(doc : PCW_Document; itemToExport: integer; filedirnamein :string; scale : real; launchNoPSX: integer) : Boolean;
var
  i, objcount, tempi, tempi2 : integer;
  obj  : PCW_MeshObject;
 // pval_buff : Pointer;
 // buffsize : integer;
  objname : string;
  
timfile, rsdfile, plyfile, matfile, grpfile : TFileStream;
  temp,temp1, temp2, temp3, temp4 : string;
   tempa,tempb, tempc, tempd, tempe : string;
  segment : integer;
   matproxy : TCW_MaterialProxy;
		
  texturelist : TStringList;
  xlist : TStringList;
  ylist : TStringList;
  blist : TStringList;
  map_bit,map_w,map_h, textureindex : integer;
  tempname : string;
  // ?}?e???A?????I?OÅgE?dÅÒnÅhd?ÅE?e???s?I???X?g?i?Å 
   mat, submat : TCW_MaterialProxy;
  matname : string;
  mapname : PChar;
  mapnamesize : integer;
  mat_r,mat_g,mat_b, mat_c, mat_col, mat_RGB_Refraction: TCW_Float;
    
  mat_text, mat_Flag : integer;
  mat_stype, mat_text_rgb,   mat_sRGB, mat_lineout :string;
   uvline :string;
  map : PCW_ImageMap;
  output_message_text, output_stat_text, output_message_text_temp : string;
  
  j , k,  count, rsd_faces, rsd_cnt, next_vram_width, textures,rsd_verts  ,  obj_verts : integer;
    face : TCW_PolygonProxy;
	vtx , vtx1, vtx2, vtx3, vtx4 : TCW_VertexProxy;
	vt_x1, vt_x2, vt_x3, vt_x4  : real;
	vt_y1, vt_y2, vt_y3, vt_y4  : real;
	vt_z1, vt_z2, vt_z3, vt_z4  : real;
 
	vt_cross_x, vt_cross_y, vt_cross_z : real;	
	vt_norm_x, vt_norm_y, vt_norm_z : real;
	
	
	//vtx1_cross, vtx2_cross, vtx3_cross, vtx4_cross : TCW_VertexProxy;
	//vtx1_norm, vtx2_norm, vtx3_norm, vtx4_norm : TCW_VertexProxy;
	vert_len, tempf  : real;
	grey_scale : string;
   filenameonly ,filedirname: string;
	x,y,z,param_scale  : real; //  PCW_FLOAT; 
	var Xs,Ys,Bs, VImgX,VImgY,VCLUTX,VCLUTY: integer;
			
 // frz_option : TCW_FreezeOption; // b5.6
begin
         // ShowMessage(info.FileName);
	//filedirname := copy(info.FileName, 0, length(info.FileName)-4 ); //remove .rsd
	
	// ShowMessage('RSDExporter itemToExport: ' + IntToStr( itemToExport) + ' <filedirnamein>'+filedirnamein+'</filedirnamein> scale: ' + FloatToStr(scale));
	
	
				// find installed dir
				
				//temp1 := 'C:\MarbleCLAY\Plugin\PSX\rsdn.bat';
				// ShowMessage(temp4);		
				
				
				
				
	temp4 := filedirnamein;
	
	
	j :=  length(temp4);
	str (j,temp1);
	// ShowMessage(temp1);
	
	filedirname := copy(filedirnamein, 0, length(filedirnamein)-4 ); //remove .rsd
	// ShowMessage('<filedirname>'+filedirname+'</filedirname>');
	
	j :=  length(filedirname);
	str (j,temp1);
	// ShowMessage(temp1);
	
	
	
	filenameonly := ExtractFileName(filedirname);
	// ShowMessage(filenameonly);
	 j :=  length(filenameonly);
	
	
	output_stat_text := '';
	
	 if(j > 7) then
        begin
			temp := 'Error: Filename ' + filenameonly + ' is too long, it must be 7 characters or less.';
					ShowMessage(temp);
			Exit;
        end;
                
	
	rsdfile := TFileStream.Create( filedirname + '.rsd' , fmCreate );
    plyfile := TFileStream.Create( filedirname + '.ply' , fmCreate );
    matfile := TFileStream.Create( filedirname + '.mat' , fmCreate );
	grpfile := TFileStream.Create( filedirname + '.grp' , fmCreate );
	
	// ShowMessage('scale');
	
	str (scale,temp1);
	// ShowMessage(temp1);
	
	
  // param_scale :=   10.0* (scale);
  param_scale :=   (scale);
  
  str (param_scale,temp1);
	// ShowMessage(temp1);
	
	
 
 // frz_option.size := sizeof(frz_option);
  try
   // WriteString( filestream, 'Metasequoia Document');
 //   WriteString( filestream, 'Format Text Ver 1.0');
  //  WriteString( filestream, '');
			objcount := CWAPIs.GetMeshObjectCount(doc);
			
	// ShowMessage('objcount');
	str (objcount,temp1);
	// ShowMessage(temp1);
	
	
			for i := 0 to objcount-1 do
			begin
			
			
	// ShowMessage('i');
	str (i,temp1);
	// ShowMessage(temp1);
	
	
			  obj := CWAPIs.GetMeshObject(doc,i); // ?I?u?W?F?N?g?d?aÅg?
				
				
				str (i,temp);
				str (objcount,temp1);
				temp := 'Object = ' + temp + ' of ' + temp1 ;			
				   // ShowMessage(temp);
				  
			  // ?I?u?W?F?N?g?IÅeIÅed?oÅeO?d?aÅg?
			  //objselected := ObjectAttrInteger( obj, 'Activated' , 0); //2004.8.14 Selected->Activated?E?I?X
			  objname := ObjectAttrString( obj, 'Name', '(noname)');
			  
			  // ÅeIÅed?3?e?A?Åë?e?I?u?W?F?N?g?I?Y?d?G?N?X?|?[?g
			  if i = itemToExport then
			  begin
				
				// ShowMessage(objname);
					
				str (i,temp);
				str (itemToExport,temp1);
				temp := 'i = ' + temp + '= itemToExport' + temp1 ;			
				//   ShowMessage(temp);
				   
				   
				// ShowMessage('i');
				str (i,temp1);
				// 	ShowMessage(temp1);
	
	
				// MQOExportMaterials( filestream, doc );
			   // WriteString( filestream, 'Object "'+objname+'" {');
			
					//CWAPIs.PrepareExport( doc, obj, info, @frz_option, obj); // ?2?I?ÅE?A?T?C?Y?I?ÅE?I?Y?I?I?u?W?F?N?g?d?aÅg??ÅE?e
				//obj_verts := CWAPIs.GetVertexCount( obj , false); // ÅfÅCÅg_Åhz?n?I?J?E?Åg?g?Åh?d?aÅg??ÅE?e
				try
					count := CWAPIs.GetPolygonCount( obj );
					
					
					if (count > 0 ) then
					begin
					
					temp := 'OKAY, object has faces: ' + IntToStr(count);
					debugMat(temp);
			
					end else begin
							ShowMessage('ERROR, no model selected or no model data is present! Please select the model to export.');
							Exit;
					end;
					
					rsd_faces:=0;
					// first count real faces		
					for j := 0 to count-1 do
					begin
						CWAPIs.GetPolygonProxy(obj, j, face);
						if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
						begin
								
								rsd_faces := rsd_faces+1;
							
						end;
					end;
					
			WriteString( grpfile, '@GRP940102');
			WriteString( grpfile, file_header_info);
			WriteString( grpfile, '# dummy GRP file - all faces belong to the same group');
			
			WriteString( grpfile, '# Number of Groups ');
			WriteString( grpfile, '1');
			WriteString( grpfile, '# Groups ');
			WriteString( grpfile, 'faces 1 1');
			WriteString( grpfile, '0-'+IntToStr(rsd_faces) );
					
					// ShowMessage('OKAY, object has real faces: ' + IntToStr(rsd_faces) );
					// get all verts
					obj_verts := CWAPIs.GetValidVertexCount( obj , false, 0, 0); // Get valid vertex count
					
					// ShowMessage('OKAY, object contains total verts: ' + IntToStr(obj_verts) );
					
					rsd_verts :=0;
					// first count real verts		
					
		// write all verts
					 vtx.size := sizeof(vtx);
					for j := 0 to obj_verts-1 do
					begin
						CWAPIs.GetVertexProxy(obj, j, vtx);				
						
						if (vtx.tag^ and CWBIT_TAG_INVALID = 0) or (vtx.tag^ and CWBIT_TAG_MIRROR = 1) then
						begin
								rsd_verts := rsd_verts+1
						end;
					end;
					
					
					
					// ShowMessage('OKAY, object has real verts: ' + IntToStr(rsd_verts) );
	
				if  true then //launchNoPSX > 1 then //ask
				begin
				
					if rsd_verts = obj_verts  then
					begin
				 
					end else   begin
					
					
						rsd_verts := MessageBox(0, PChar('Incorrect export data found!' + ^M + ^J + 'This is commonly related to turning off mirror and the RSD exporting gets messed up. Saving your file and reopening it will fix this.' + ^M + ^J  +  'Do you want to continue?' ) , 'Bad export data!', MB_YESNO	);
						
	
						// ShowMessage('launchNoPSX '+ IntToStr(launchNoPSX));
						
						
						if  rsd_verts = IDYES then //show
						begin
						
						
						end else 
							Exit;
					
						end;
						
				end;
	
	
					
					// write ply
					WriteString( plyfile, file_header_info);
					WriteString( plyfile, '@PLY940102');
					WriteString( plyfile, '# Number of Items - verts, normals, polygons');
					if (rsd_faces > 0 )  then
					begin
					output_stat_text := ^M + ^J  + 'Model ' + objname +' has: ' + ^M + ^J  +  IntToStr(obj_verts) + ' Verts, ' + ^M + ^J  +  IntToStr(rsd_faces) + ' faces' + ^M + ^J ;
					// ShowMessage(output_stat_text);
					end else begin
							ShowMessage('ERROR, no model selected or no model data is present! Please select the model to export.');
							Exit;
					end;
				
					temp := IntToStr(obj_verts) + ' ' + IntToStr(rsd_faces) + ' ' + IntToStr(rsd_faces) ;
					WriteString( plyfile, temp);
					temp := '#verts = ' + IntToStr(obj_verts) ;
					WriteString( plyfile, temp);
		
			
			
		// write all verts
					 vtx.size := sizeof(vtx);
					for j := 0 to obj_verts-1 do
					begin
						CWAPIs.GetVertexProxy(obj, j, vtx);	
						if true then // (vtx.tag^ and CWBIT_TAG_INVALID = 0) or (vtx.tag^ and CWBIT_TAG_MIRROR = 1) then
						begin
		// from rsd.lua
		//	str =   string.format("%.2f",verts["y"]*param_scale ) .. 
		// " " ..  string.format("%.2f",verts["z"]*-param_scale ) ..  
		// " " ..  string.format("%.2f",verts["x"]*param_scale ) .. "\n"
								
								x := vtx.y^ * param_scale;						
								y := vtx.z^ * -param_scale;
								z := vtx.x^ * param_scale;
								
								temp := Format('%.4f %.4f %.4f',[x, y, z]);
								
								// temp := Format(#9#9'%.4f %.4f %.4f',[vtx.x^, vtx.y^, vtx.z^]);
								WriteString( plyfile, temp);
								end; //if
					end;
				
				WriteString( plyfile, '# ');
				str (rsd_faces,temp2);
				temp := '#polygon normals = '+ temp2;
				WriteString( plyfile, temp);
				WriteString( plyfile, '# ');
				
				
				//-- normal calculation from: 
				//-- Net Yaroze usenet newsgroup post: Subject: Re: Calculating RSD Normals Subject: Re: Calculating Normals
				//-- get valid verts and faces
				rsd_cnt := 0;
				
				
				// first count real faces		
					for j := 0 to count-1 do
					begin
						CWAPIs.GetPolygonProxy(obj, j, face);			
						if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
									begin
									str (j,temp4);							
		//    // ShowMessage(temp4);
									CWAPIs.GetVertexProxy(obj, face.vertex[0]^, vtx1);
		//	// ShowMessage(temp4);
									CWAPIs.GetVertexProxy(obj, face.vertex[1]^, vtx2);
		// 	// ShowMessage(temp4);
									CWAPIs.GetVertexProxy(obj, face.vertex[2]^, vtx3);
		//	// ShowMessage(temp4);
								// vert flip
								// x := vtx.y^ * param_scale;						
								// y := vtx.z^ * -param_scale;
								// z := vtx.x^ * param_scale;
								
									vt_x1 := (vtx1.y^);
									vt_y1 :=  (vtx1.z^);
									vt_z1 := (vtx1.x^);
									
									vt_x2 := (vtx2.y^);
									vt_y2 :=  (vtx2.z^);
									vt_z2 := (vtx2.x^);
									
									vt_x3 := (vtx3.y^);
									vt_y3 :=  (vtx3.z^);
									vt_z3 := (vtx3.x^);
									
									vt_x1 := param_scale*vt_x1;
									vt_y1 := -param_scale*vt_y1;
									vt_z1 := param_scale*vt_z1;
									
									vt_x2 :=param_scale*vt_x2;
									vt_y2 :=  -param_scale*vt_y2;
									vt_z2 :=param_scale*vt_z2;
									
									
									vt_x3 :=param_scale*vt_x3;
									vt_y3 :=-param_scale*vt_y3;
									vt_z3 := param_scale*vt_z3;
									
									
									
									
									// use 4th vert instead of 3rd
									if face.n^ = 4 then
									begin
									
									
										// replace vert3 with vert4
										CWAPIs.GetVertexProxy(obj, face.vertex[3]^, vtx4);
										 
										tempf := testQuad(vtx1, vtx2, vtx3, vtx4);
										
										vt_x3 := (vtx4.y^);
										vt_y3 :=  (vtx4.z^);
										vt_z3 := (vtx4.x^);
										
										vt_x3 := (vt_x3*param_scale);
										vt_y3 :=  (vt_y3*-param_scale);
										vt_z3 := (vt_z3*param_scale);
									
	
										if tempf = 0.0 then
										begin
											output_message_text := '* Model contains none Coplanar quads, depending on the view angle, they disapear when they shouldnt!!'+ ^M + ^J  +' This is fine while modelling, but not for the final export, see help!';
										end;
										
									end;
									
		//// ShowMessage(temp4);					
									vt_cross_x := ((vt_y2-vt_y1)*(vt_z3-vt_z1))-((vt_z2-vt_z1)*(vt_y3-vt_y1));
									vt_cross_y := ((vt_z2-vt_z1)*(vt_x3-vt_x1))-((vt_x2-vt_x1)*(vt_z3-vt_z1));
									vt_cross_z := ((vt_x2-vt_x1)*(vt_y3-vt_y1))-((vt_y2-vt_y1)*(vt_x3-vt_x1));
									vert_len := ( (vt_cross_x*vt_cross_x ) + (vt_cross_y*vt_cross_y) + (vt_cross_z*vt_cross_z) );
									// str(vert_len);
									//Str(vert_len:0:2,temp);
								
									
									
									vert_len := System.Sqrt( vert_len );
									// 1298312.0722 1139.4350 386.6939 1069.3739 -72.2450 
									//temp := Format('%.4f %.4f %.4f %.4f %.4f ',[vert_len, vert_len, vt_cross_x, vt_cross_y, vt_cross_z]);
									//WriteString( plyfile, temp);
		//// ShowMessage(temp4);
						
									vt_norm_x := vt_cross_x/vert_len;
									vt_norm_y := vt_cross_y/vert_len;
									vt_norm_z := vt_cross_z/vert_len;
									
									//temp := Format('%.4f %.4f %.4f ',[vt_norm_x, vt_norm_y, vt_norm_z]);
									//WriteString( plyfile, temp);
									if (  not( vt_norm_x = vt_norm_x ) ) then
									begin
									vt_norm_x := 0.0;
									end;
									if (  not( vt_norm_y = vt_norm_y ) ) then
									begin
									vt_norm_y := 0.0;
									end;
									if (  not( vt_norm_z = vt_norm_z ) ) then
									begin
									vt_norm_z := 0.0;
									end;
									str(vert_len,temp);
									str(vt_norm_x,temp1);
									str(vt_norm_y,temp2);
									str(vt_norm_z,temp3);
									str(rsd_cnt,temp4);
									// str =  "#normal: "..  rsd_cnt  ..  " len: " ..  vert_len ..  " vert_cross_x: "..  vert_cross_x ..  " vert_cross_y: "..  vert_cross_y ..  " vert_cross_z: "..  vert_cross_z ..  "\n"
									//temp := '#normal: '+  temp4 + ' len: ' +  temp + ' vert_cross_x: ' +  temp1 + ' vert_cross_y: ' +  temp2 + ' vert_cross_z: ' +  temp3;
									//temp :=  '#' + Format('%.4f %.4f %.4f %.4f %.4f', [temp4, temp, temp1, temp2, temp3]); 
									// // ShowMessage(temp); 
									//WriteString( plyfile, temp);
		//// ShowMessage(temp4);
									//	str =   string.format("%.2f",vert_norm_x) .. " " ..  string.format("%.2f",vert_norm_y ) ..  " " ..  string.format("%.2f",vert_norm_z) .. "\n"
									temp :=  Format('%.4f %.4f %.4f',[vt_norm_x, vt_norm_y, vt_norm_z]); 
									// // ShowMessage(temp);
									WriteString( plyfile, temp);
									
									       
			//		  TCWAPI_GetVertexProxy = function ( obj : PCW_MeshObject; index : TCW_INT; var vertex : TCW_VertexProxy ) : TCW_BOOLEAN ; stdcall;
											
									rsd_cnt := rsd_cnt+1
							
						end;
					end;
				
				
				
				//str = "#polygons=".. rsd_faces .. " 0=tri 1=quad\n"
				WriteString( plyfile, '#');
				str(rsd_faces,temp);
				temp2 := '#polygons=' + temp + '  0=tri 1=quad';
				WriteString( plyfile, temp2);
				WriteString( plyfile, '#');
									
				
				rsd_cnt := 0;
				
				// first count real faces		
					for j := 0 to count-1 do
					begin
						CWAPIs.GetPolygonProxy(obj, j, face);	
								if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
								begin		
								
									// use 4th vert instead of 3rd
									if face.n^ = 4 then
									begin
										
										// str =  "#quad: "..  rsd_cnt..  " 4321  \n"
										str(rsd_cnt, temp);
										// WriteString( plyfile, '#quad: ' + temp + ' winding: 4312 ');
										
										str(face.vertex[0]^, temp1);
										str(face.vertex[1]^, temp2);
										str(face.vertex[2]^, temp3);
										str(face.vertex[3]^, temp4);
										temp := '1 ' + temp4 + ' ' + temp3 + ' ' + temp1 + ' ' + temp2 + '  ' + temp + ' ' + temp + ' ' + temp + ' ' + temp;
										WriteString( plyfile, temp);
										// str =  "1 " .. string.format("%d",vert_indexs[4] ) .. " " ..  string.format("%d",vert_indexs[3] ) ..  " " ..  string.format("%d",vert_indexs[1] ) .. " " ..  string.format("%d",vert_indexs[2] ) .. " " .. rsd_cnt .. " " ..  rsd_cnt ..  " " ..  rsd_cnt .. " " ..  rsd_cnt .. "\n"
						
									end else begin
										
											// str =  "#quad: "..  rsd_cnt..  " 4321  \n"
										str(rsd_cnt, temp);
										//WriteString( plyfile, '#tri: ' + temp + ' winding: 321 ');
											
										str(face.vertex[0]^, temp1);
										str(face.vertex[1]^, temp2);
										str(face.vertex[2]^, temp3);
										temp := '0   ' + temp3 + ' ' + temp2 + ' ' + temp1 + ' 0  ' + temp + ' ' + temp + ' ' + temp + ' 0';
										WriteString( plyfile, temp);
										// str =   "0 " .. string.format("%d",vert_indexs[3] ) .. " " ..  string.format("%d",vert_indexs[2] ) ..  " " ..  string.format("%d",vert_indexs[1] ) .. " 0 "  ..  rsd_cnt .. " " ..  rsd_cnt ..  " " ..  rsd_cnt .. " 0 "  .. "\n"
									
										
										
									end;
									
								
									rsd_cnt := rsd_cnt+1
							
						end;
					end;
				
				
				
				
				//rsd_cnt := 0;
			
				WriteString( matfile, file_header_info);
				WriteString( matfile, '@MAT940801');
				WriteString( matfile, '# Number of Items');
				
				str(rsd_faces, temp1);
				WriteString( matfile,temp1);
				WriteString( matfile, '# Materials');
				
				 debugMat('# Materials');
				
				
				// create material list - need for finding face.mat		
				texturelist := TStringList.Create;
				xlist := TStringList.Create;
				ylist := TStringList.Create;
				blist := TStringList.Create;
				textureindex :=0;
				rsd_cnt := CWAPIs.GetMaterialCount( doc );
				k := 0;
				textures := 0;
				next_vram_width := 0;
				WriteString( rsdfile, file_header_info);
				WriteString( rsdfile, '@RSD940102');
				WriteString( rsdfile, 'PLY=' + filenameonly+'.ply');
				WriteString( rsdfile, 'MAT=' + filenameonly+'.mat');
				
					//Jul 2024
				WriteString( rsdfile, 'GRP=' + filenameonly+'.grp');
	
				debugMat('Textures = '+ IntToStr(rsd_cnt));
				
				
				
					for j := 0 to rsd_cnt-1 do
					begin
					  CWAPIs.GetMaterialProxy( doc, j, matproxy );
					 // mat.index^ := j; //// Save the index for later getting the material index value from the material pointer ?a?A?}?e???A???|?C?Åg?^?c?c?}?e???A???I?C?Åg?f?b?N?XÅfl?dÅg??e???s?E?C?Åg?f?b?N?X?d?UÅeÅ˜
						// CWAPIs.MakeMaterialProxy(face.mat^, matproxy);
					
						// WriteString( rsdfile, '# matname: ' + matproxy.name);
					
						// do only textures, to resize, convert and count them
						  if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'DiffuseMap', submat) then
						  begin
							CWAPIs.GetMaterialMap( submat.instance, map);
							if map <> nil then
							begin
							  // b5.5.1
							  mapnamesize := CWAPIs.GetImageMapName( map, nil , 0 );
							  if mapnamesize > 0 then
							  begin
									GetMem(mapname, mapnamesize);
									try
										  if CWAPIs.GetImageMapName( map, mapname, mapnamesize) > 0 then
										  begin
												temp := '# material No ' + IntToStr(j) + ' is ' +  mapname;
												grey_scale := ' ';
												//WriteString( rsdfile, temp);
												debugMat( temp );
												tempname := mapname;
												textureindex := texturelist.IndexOf(tempname);
												if textureindex = -1 then // add new
												begin
														texturelist.Add(tempname);
												
														//WriteString( rsdfile, '# submat: ' + submat.name);
														//WriteString( rsdfile, '# ');
														//WriteString( rsdfile, '# added: ' + tempname + ' index: ' + IntToStr(textures) );
														temp3 := copy(mapname, 0, length(mapname)-3);
														// ShowMessage(temp3);
											
														//WriteString( rsdfile, '# path and name must have no spaces or special characters');
														//WriteString( rsdfile, '#TEX[' + IntToStr(textures)+ ']="' +PChar(filedirname)+IntToStr(textures)+'tim"');
														
														// GetMem(map, mapnamesize);
														mapnamesize := SizeOf(map);
					//TCWAPI_SaveImageMap = function (map : PCW_ImageMap; name : PChar; size : TCW_INT): TCW_BOOLEAN; stdcall;
														CWAPIs.SaveImageMap(map, PChar(filedirname+IntToStr(textures)+'.bmp'), mapnamesize);
														
														//// ShowMessage(submat.name);
														//// ShowMessage(temp1);
											
											
														//texturelist.Strings[textureindex] := tempname + IntToStr(textureindex);
														//tempname := tempname + IntToStr(j);
														
														//tempi := LastDelimiter('~', matproxy.name);		
														
											
														tempi := Pos('~', matproxy.name);	
														if tempi > 0 then			// process image									
														begin
															
																		
																temp2 := copy(matproxy.name, tempi, length(matproxy.name) );
																temp4 := LowerCase(temp2);				
																tempi2 := Pos('g', temp4);		
								
																 if tempi2 = 2 then												
																 begin
																	// grey_scale := ' -colorspace gray ';
																	grey_scale := 'gray';
																	 // ShowMessage(IntToStr(tempi) + grey_scale); // + 'Exiting now. ' + IntToStr(tempi) );
																	tempi := tempi + 1;
																	
																	end else begin
																	grey_scale := 'Undefined';
																 end;
																 
																 
																temp4 := copy(matproxy.name, tempi+1, length(matproxy.name) );
																
																 Sscanf(temp4,'%dx%dx%d', [@Xs, @Ys, @Bs]);
																 //ShowMessage('x:' +IntToStr(Xs) + ' y: '+IntToStr(Ys) + ' b:'+IntToStr(Bs)  );
			 
			 
																// identify
																//// ShowMessage(filedirname+IntToStr(textures)+'.bmp"');
																//temp3 := GetDosOutput('identify "' + filedirname+IntToStr(textures)+'.bmp"');
																//// ShowMessage(temp3);
																temp2 := temp4;
																// ShowMessage(' temp2   ' +temp2);										
																tempi := Pos('x', temp2)-1;		
																// ShowMessage('tempi   ' +IntToStr(tempi));	
														
																 if tempi < 1 then												
																 begin
																	ShowMessage('ERROR: Image format must be: ~256x256x8 (~widthxhieghtxbitwidth) on Material name: ' + temp4); // + 'Exiting now. ' + IntToStr(tempi) );
																	Exit;
																 end;
																 
																 
																temp3 := copy(temp2, 0, tempi );
																// ShowMessage('temp3   ' + temp3);
																
																
																//Xs := strtoint(temp3);
															
																xlist.Add(temp3);
																// ShowMessage('  Xs   ' +IntToStr(Xs));	
																temp2 := copy(temp2, (tempi)+2, length(temp2) );
																// ShowMessage('Ys temp2   ' + temp2);
																
																tempi := Pos('x', temp2)-1;
																
																
																 if tempi < 1 then												
																 begin
																	ShowMessage('Warning: Image format must be: ~256x256x8 (~widthxhieghtxbitwidth) Error: ' + temp4); // + 'Exiting now. ' + IntToStr(tempi) );
																	//Exit;
																 end;
																 
																// ShowMessage('  Ys tempi  ' +IntToStr(tempi));	
																// ShowMessage('Ys temp2   ' + temp2);
																temp3 := copy(temp2, 0, tempi );
																// ShowMessage('Ys temp3   ' + temp3);
																
																
																// Ys := strtoint(temp3); 
																
																ylist.Add(temp3);
																// ShowMessage('  Ys   ' +IntToStr(Ys));	
																 if Ys > 256 then												
																 begin
																	ShowMessage('Warning: Material texture ('+ matproxy.name +') has hieght greater then 256!' ); 
																	// Exit;
																 end;
																temp2 := copy(temp2, (tempi)+2, length(temp2) );
																// ShowMessage('Bs temp2   ' + temp2);
																
																//tempi := Pos('x', temp2)-1;
																//  ShowMessage('  Bs Trunc(Xs/Bs)   ' +IntToStr(Trunc(Xs/Bs) ));	
																//// ShowMessage('Bs temp2   ' + temp2);
																//temp3 := copy(temp2, 0, tempi );
																// ShowMessage('Bs temp2   ' + temp2);
																
																
																Bs := strtoint(temp2); 
																//blist.Add(temp3);
																// ShowMessage('  Bs   ' +IntToStr(Bs));	
																
																
																
																 if Bs = 4 then												
																 begin
																 
																	  if Xs/Bs > 128 then												
																		 begin
																			ShowMessage('Warning: Material texture ('+ matproxy.name +') has width greater then 512 4bit!' ); 
																			//Exit;
																		 end;
																 
																end else begin
																// no textures
																		if Bs = 8 then												
																		 begin
																					
																			  if Xs/Bs > 32 then												
																				 begin
																					ShowMessage('Warning: Material texture ('+ matproxy.name +') has width greater then 258 8bit!' ); 
																				//	Exit;
																				 end;
																		
																		end else begin
																		// no textures
																			//NewMaterial ~128x256x16
																					if Bs = 16 then												
																						 begin
																								
																						  if Xs/Bs > 8 then												
																							 begin
																								ShowMessage('Warning: Material texture ('+ matproxy.name +') has width greater then 128 16bit!' ); 
																							//	Exit;
																							 end;
																			
																					end else begin
																							ShowMessage('ERROR: Material texture ('+ matproxy.name +') has an incorrect bit depth, only 4,8,16 should be used!' ); 																					
																							Exit;
																					end;
																		end;
																		
																end;
																 
																Xs := Xs-1;//zero based
																Ys := Ys-1;//zero based
																 
																 // check for VRAM UV, another ~
																tempi := Pos('~', temp4);	
																if tempi > 0 then												
																begin
																		temp4 := copy(temp4, tempi+1, length(temp4) );
																		temp4 := Trim(temp4);
																		 // ShowMessage('VRAM: VImgX,VImgY,VCLUTX,VCLUTY'+temp4 );
																		 
																		 
																		 Sscanf(temp4,'%dx%dx%dx%d', [@VImgX,@VImgY,@VCLUTX,@VCLUTY]);
																		 // ShowMessage('VImgX:' +IntToStr(VImgX) + ' VImgY: '+IntToStr(VImgY) + ' VCLUTX:'+IntToStr(VCLUTX) + ' VCLUTY:'+IntToStr(VCLUTY)  );
																		 
																 end else begin
																		 // auto, very simple and limited to very few textures
																		 VImgX :=  640 + (next_vram_width);
																		 VImgY := 0;
																		 VCLUTX := 640;
																		 VCLUTY := 256+textures;
																		 
																		  if textures > 0 then	
																		  begin
																				VImgX := VImgX +1; // because starting from zero
																		   end;
																		 
																 end;
			 
			 
																 
																temp2 := GetDosOutput('dir "' + filedirname+IntToStr(textures)+'.bmp"');
																// ShowMessage(temp2);
																
																// WriteString( matfile, temp2);
																	
																
																		// BMP exist continue to tim conversion
						//local s = "start convert  -auto-level -resize "  .. param_text_w+1  .. "x" .. param_text_h+1 .. " -type palette -depth ".. param_TIM_Depth .. " "  .. param_raw_texture_filename.. "  " .. param_outfile .. ".bmp >> " .. param_outfile..".log"
																						
																if Pos('.bmp', temp2) > 1 then
																begin
																
																
																	if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Transparency', submat) then
																	begin
																		if submat.typ^ in [CW_MATVALUE_Color3, CW_MATVALUE_Vector4] then
																		begin
																		
																					// ShowMessage('Transparency');
																					// temp4 := temp4 + ' -t ';
																					temp4 :=  ' -t ';
																		end else begin
																			temp4 :=  ' ';																		
																		
																		end;
																	end;
												
												
																		// temp1 := ' convert   "'  + filedirname+IntToStr(textures)+'.bmp"  -verbose ' + grey_scale +'  -auto-level -resize '  + IntToStr(Xs+1)+ '!x' + IntToStr(Ys+1)+ '! -type palette -depth ' + IntToStr(Bs) +     ' -colors ' +  IntToStr( Trunc( Power2(2, Bs) )  ) + '  "' + filedirname+IntToStr(textures)+'-resized.bmp"';
																		
																		//+ IntToStr(VImgX ) +'  ' + IntToStr(VImgY ) +'  -plt ' + IntToStr( VCLUTX ) +' ' +IntToStr( VCLUTY   ) +
																		
																		temp1 := 'C:\MarbleCLAY\Plugin\PSX\createimg.bat   "'  + filedirname+IntToStr(textures)+'.bmp"  ' + grey_scale +'  '  + IntToStr(Xs+1)+ '  ' + IntToStr(Ys+1)+ '  ' + IntToStr(Bs) +     '   ' +  IntToStr( Trunc( Power2(2, Bs) ) -1 )  +'    "' + filedirname+IntToStr(textures)+'.tim"   ' ;
																		//ShowMessage(temp1);
																		
																		temp2 := GetDosOutput(temp1);
																	   	// ShowMessage(temp2);
																	   
																	   
																	   //magick.exe system32 tool
																	     if Length(temp2) > 2 then
																		   begin
																				// ShowMessage('Image convert program: '+ ^M + ^J + 'Command: ' + temp1  + ^M + ^J + ' Output: '+temp2);
																				
																		   end;
				
				
											
																		// temp1 := ' convert   "'  + filedirname+IntToStr(textures)+'.bmp"  -verbose ' + grey_scale +'  -auto-level -resize '  + IntToStr(Xs+1)+ '!x' + IntToStr(Ys+1)+ '! -type palette -depth ' + IntToStr(Bs) +     ' -colors ' +  IntToStr( Trunc( Power2(2, Bs) )  ) + '  "' + filedirname+IntToStr(textures)+'-resized.bmp"';
																		
																		//+ IntToStr(VImgX ) +'  ' + IntToStr(VImgY ) +'  -plt ' + IntToStr( VCLUTX ) +' ' +IntToStr( VCLUTY   ) +
																		
																		temp1 := 'C:\MarbleCLAY\Plugin\PSX\createtim.bat   ' + IntToStr(Bs) +     '  ' + IntToStr(VImgX ) +'  ' + IntToStr(VImgY ) +'  ' + IntToStr( VCLUTX ) +'  ' +IntToStr( VCLUTY   ) +  '   "' + filedirname+IntToStr(textures)+'.tim"    ' + temp4 ;
																		//	ShowMessage(temp1);
																			 
																		temp2 := GetDosOutput(temp1);
																	   	// ShowMessage(temp2);
																	   
																	   
																	     if Length(temp2) > 2 then
																		   begin
																				// ShowMessage('img2tim program: '+ ^M + ^J + 'Command: ' + temp1  + ^M + ^J + ' Output: '+temp2);
																				
																		   end;
				
																	   
																
																		// WriteString( matfile, temp2);																	
																		//next_vram_width := ( next_vram_width +  Trunc(Xs/Bs) ); 
																		tempi :=   Trunc(16/Bs);
																		next_vram_width := next_vram_width +  Trunc( Xs/tempi ); 
																		
																end else begin
																// no textures
																	ShowMessage('Error: BMP ('+temp2+') not found, Texture needs manual exporting first, click material ('+ matproxy.name +') > DiffuseMap > Import > right click > last option.'  );
																	Exit;
																end;
															
													//// ShowMessage(matproxy.name);
														end else begin
														// no textures
															ShowMessage('Warning: 1 No TIM created because material name ('+ matproxy.name +')does not end with ~256x256x8 (~widthxhieghtxbitwidth)' );
															// Exit;
														end;
														
														textures := textures +1;
												end else begin
													// existing texture
												end;
																						
												
										
											end else begin
											//WriteString( rsdfile, '#found TEX[' + IntToStr(textureindex)+ ']="' +texturelist.Strings[textureindex]);
												ShowMessage('Error: bad material name?? ('+ matproxy.name +')' );
												exit;	
											end;
									finally
									  FreeMem(mapname);
									end;
							  end else begin
								 // no mapfile
							  end;
							end;
						  end;
						   // WriteString( rsdfile, '# ');
							//  WriteString( rsdfile, '# ');
							//  				WriteString( rsdfile, '# ');
						//WriteString( rsdfile, '# ');
						
					end;
				
					if textures > 0 then
					begin
							WriteString( rsdfile, 'NTEX=' + IntToStr(textures) );
								
								
							timfile := TFileStream.Create( filedirname + '.PSX' , fmCreate );
							WriteString( timfile, file_header_info );
							WriteString( timfile, '[TIM Files]');
							
										
						for j := 0 to textures-1 do
							begin
							WriteString( rsdfile, 'TEX[' + IntToStr(j)+ ']=' +PChar(filenameonly)+IntToStr(j)+'.tim');
							//File_0=C:\MC2RSD\MC2RSD.TIM
							WriteString( timfile,  'File_' + IntToStr(j)+ '=' +PChar(filenameonly)+IntToStr(j)+'.tim');			
											
						end;
						
						
						// create TIMUTIL project
						WriteString( timfile, '#Gracphics mode is from the rsdv NY executable');
						WriteString( timfile, '[Graphics Mode]');
						WriteString( timfile, 'Width=640');
						WriteString( timfile, 'Height=240');
						timfile.Free;
						
					//if textures > 0 then
					end else begin
						// no textures
						WriteString( rsdfile, 'NTEX=0');
					
					end;
 
						debugMat('Doing faces now');			
			
					rsd_cnt := 0;
							
					for j := 0 to count-1 do
					begin
						CWAPIs.GetPolygonProxy(obj, j, face);	
	
									debugMat( 'face test' );
								  
									
									
								if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
									begin					
									
									//tempi := face.mat.index^;
									// ShowMessage(submat.name);
									//textureindex := texturelist.IndexOf(face.mat.name^);
									// TCWAPI_GetMaterialProxy = function (doc : PCW_Document; index : TCW_INT; var mat : TCW_MaterialProxy) : TCW_BOOLEAN; stdcall;
									//CWAPIs.GetMaterialProxy( doc, textureindex, mat );
									CWAPIs.MakeMaterialProxy(face.mat^, matproxy);
									
									textureindex := -1;
									
									mat_sRGB  :=  Format(' %.0f %.0f %.0f ',[ (255*0.25), (255*0.25), (255*1.0)  ]); 
									mat_c := -1.0;							
									mat_col := -1.0;
								
									mat_text := -1; 
									
									mat_stype  :=  'C';
									//0: Light source calculation supported
									//1: Fixed color
									mat_Flag := 1; // default - everything off
									mat_text_rgb := 'T'; // default no RGB, text only
									mat_lineout  := ''; 
									mat_RGB_Refraction := 0.5;
									
									
									
									
									// light calculations on or off - default is off
									if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Specular', submat) then
									begin
										if submat.typ^ in [CW_MATVALUE_Value1, CW_MATVALUE_Value255] then
										begin
										  CWAPIs.GetMaterialValueVal1( submat.instance, mat_c );
											 
											if mat_c > 0.0 then
											begin
												
												mat_Flag := 0; // set light calc to on 
												// WriteString( matfile, '#read mat_Flag: ' + mat_Flag);
												debugMat(  mat_text_rgb);
											end;
												 
										 
										end;
									end;
									
									// light calculations on or of
												if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Transparency', submat) then
												begin
												 // ShowMessage('Transparency1');
													if submat.typ^ in [CW_MATVALUE_Color3, CW_MATVALUE_Vector4] then
													begin
														CWAPIs.GetMaterialValueVec4( submat.instance, mat_r,mat_g,mat_b,mat_c );
														mat_Flag := mat_Flag +4;
														debugMat('Transparency2');
														 debugMat(Format('Transparency  %f %f %f ',[ (mat_r), (mat_g), (mat_b)] ));
														if (mat_r > 0.0) or (mat_g > 0.0) or (mat_b > 0.0)   then
														begin
																	
																	 
																	if (mat_r > 0.0) then	mat_Flag := mat_Flag  + 16 
																	else if	(mat_g > 0.0)	then	mat_Flag := mat_Flag  +  32
																	else if	(mat_b > 0.0)	then	mat_Flag := mat_Flag  +  64;
																	end;
																	
																	
														//			ShowMessage('Transparency mat_Flag ' + IntToStr(mat_Flag)  );
															
													end;
												end;
									
									
									
									
									
									
									(*
									
									RSD
									Flag
									
									This is a hexadecimal integer representing the type of a polygon. The flag is not provided with a prefix of
									'0x'. The following gives the meaning of each bit.
									
									1
									1st bit, Bit 0: Light source calculation mode
									0: Light source calculation supported
									1: Fixed color
									With light source calculation supported, the rendering color is determined by the angle between the
									direction of the light source and the surface of the polygon. Note that for fixed color, the color is constant
									irrespective of the direction of the light source.
									2
									2nd bit, Bit 1: Flag for Back face Culling
									0: Single-faced polygon
									1: Double-faced polygon
									4
									3rd bit, Bit 2: Flag for Semitransparent
									0: Opaque
									1: Semitransparent
									With the flag set at 1, the polygon with no texture is always made to be semitransparent, and the polygon
									with texture is made to be semitransparent/opaque/ transparent depending on the STP bit of texture data.
									8
									 (?=.*back)(?=.*polygon)(?=.*semitransparency)
									 
									4th to 6th bits, Bits 3 to 5: Rate of semitransparency
									000 000: 50% back + 50% polygon
									R00 001: 100% back + 100% polygon
									0G0 010: 100% back - 100% polygon
									00B 011: 100% back + 25% polygon
									1XX: reserved
									The current library does not provide the capability to change the semitransparency rate of a polygon with
									no texture.
									Bits 6 to 7: Reserved (Must be 0)
									
									TMD
									ABR: Semitransparency rate (Mixture rate).
									Valid, only when ABE is 1.
									00 50%back + 50%polygon
									01 100%back + 100%polygon
									10 100%back - 100%polygon
									11 100%back + 25%polygon
									*)
									
									
									mat_r := -1.0;
									mat_g := -1.0;
									mat_b := -1.0;
									
									// mat_RGB_Refraction if set, sets the colour intensitiy
						
									if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Refraction', submat) then
									begin
										if submat.typ^ in [CW_MATVALUE_Value1, CW_MATVALUE_Value255] then
										begin
										  CWAPIs.GetMaterialValueVal1( submat.instance, mat_RGB_Refraction );
																								 
													//	  WriteString( matfile,  '#  1 ' + FloatToStr(mat_RGB_Refraction) + ': mat_RGB_Refraction' );
										end;
									end;
								
									if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Diffuse', submat) then
									begin
										if submat.typ^ in [CW_MATVALUE_Color3, CW_MATVALUE_Vector4] then
										begin
											CWAPIs.GetMaterialValueVec4( submat.instance, mat_r,mat_g,mat_b,mat_c );
											// mat_sRGB :=  ' ' + FloatToStr(255*mat_r) + ' '  + FloatToStr(255*mat_g) + ' ' + FloatToStr(255*mat_b) + ' ';
											
								
												//if mat_RGB_Refraction < 0.50 then
												if mat_RGB_Refraction > 0.0 then
												begin	
														mat_sRGB  :=  Format('# 2  %f %f %f ',[ (mat_r), (mat_g), (mat_b)] );
														// WriteString( matfile, mat_sRGB);
														//mat_RGB_Refraction := 1+(mat_RGB_Refraction - 1.0);
														
														// WriteString( matfile, '# 3  1+(mat_RGB_Refraction - 0.50) =   ' + FloatToStr(mat_RGB_Refraction) + ' ' );
															
														mat_r := mat_r * mat_RGB_Refraction;
														mat_g := mat_g * mat_RGB_Refraction;
														mat_b :=  mat_b * mat_RGB_Refraction;
																		
														mat_sRGB  :=  Format('# 4  %f %f %f ',[ (mat_r), (mat_g), (mat_b)] );
														// WriteString( matfile, mat_sRGB);
											
												// if mat_RGB_Refraction 
												end;
																
													
												mat_sRGB  :=  Format(' %.0f %.0f %.0f ',[ (255*mat_r), (255*mat_g), (255*mat_b)  ]); 
												// ShowMessage(mat_sRGB);
												// WriteString( matfile, '#read RGB: ' + mat_sRGB + ' from  ' + matproxy.name + ' index: ' + IntToStr(matproxy.index^) + ' ' + submat.name);
														
																			
										end;
									end;
									
									
									 
									
									
									debugMat( 'test UV 2' );
								
									
									
									// face has texture
									if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'DiffuseMap', submat) then
									begin
												CWAPIs.GetMaterialMap( submat.instance, map);
												if map <> nil then
												begin												
						
															// b5.5.1
															  mapnamesize := CWAPIs.GetImageMapName( map, nil , 0 );
															  if mapnamesize > 0 then
															  begin
																	GetMem(mapname, mapnamesize);
																	try
																		  if CWAPIs.GetImageMapName( map, mapname, mapnamesize) > 0 then
																		  begin
																		//	temp := '#j face ' + IntToStr(j) + '  ' +  mapname;
																		//	 WriteString( matfile, temp);
																		//	debugMat( temp );
																	
																			textureindex := texturelist.IndexOf(mapname);
																				if textureindex > -1 then // add
																				begin									
																				 // WriteString( matfile, '# found: [' + IntToStr(textureindex)+ ']="' +texturelist.Strings[textureindex] );
																					mat_text := textureindex;
																															 
																					// check for colour on texture
																					if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Shininess', submat) then
																					begin
																						if submat.typ^ in [CW_MATVALUE_Value1, CW_MATVALUE_Value255] then
																						begin
																						 
																						  CWAPIs.GetMaterialValueVal1( submat.instance, mat_col );
																							if mat_col > 0.0 then
																							begin
																								 mat_text_rgb:= ' D '; // use RGB
																								
																									if mat_Flag = 0 then 
																									begin		
																										output_message_text_temp :=  ^M + ^J  +'* Material ('+ matproxy.name +') can not use both light caculations (Specular) and RGB colour on texture (Shininess)' + ^M + ^J  +'   light caculation is defaulted, RGB colour is ignored.';
																									end;
																								
																							end else begin
																								// no RGB texture
																								mat_sRGB := ' ';
																								mat_text_rgb:= ' T '; // texture
																							end;	
																							
																						end;
																					end;
																				
																					 //	WriteString( matfile, '#read mat_text_rgb: ' + mat_text_rgb + ' mat_sRGB ' + mat_sRGB);																							
																								
																					
																					
																				end else begin
																					// no textures
																					ShowMessage('Warning: 2 No TIM created because material name ('+ matproxy.name +')does not end with ~256x256x8 (~widthxhieghtxbitwidth)' );
																					// Exit;
																				end;	
																			
																		  end;
																	finally
																	  FreeMem(mapname);
																	end;
															  end else begin
																ShowMessage('Error: Texture needs manual exporting first, click material ('+ matproxy.name +') > DiffuseMap > Import > right click > 3rd option.'  );
																Exit; 
															  end;
															  
							
														// calc UV here!
																temp1 := xlist[mat_text];
																map_w := StrToInt( temp1 );
																temp1 := ylist[mat_text];
																map_h := StrToInt( temp1 );
																			
																if ( (face.uv[0]^ > 0) or (face.uv[1]^ > 0) or (face.uv[2]^ > 0) ) then
																begin
																	
																debugMat( 'reading UV 0,1,2 > 0   UV 1' );
																
																	CWAPIs.GetUVVertexProxy(obj, face.uv[0]^, vtx1);
																	CWAPIs.GetUVVertexProxy(obj, face.uv[1]^, vtx2);
																	CWAPIs.GetUVVertexProxy(obj, face.uv[2]^, vtx3);
																	
																debugMat( 'reading UV 0,1,2 > 0   UV 1' );
																
																		//if (  (face.uv[3]^ > 0) ) then
																		if face.n^ = 4 then
																		begin
																			debugMat( 'UV has 4points face.uv[3]^ > 0   UV 1' );
																
																			CWAPIs.GetUVVertexProxy(obj, face.uv[3]^, vtx4);
																			
																			
																			uvline  :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f   ',[ ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) )  ]); 
																			
																				
																		end else begin
																			uvline   :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f  ',[ ( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) , 	( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) ) ,	( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,	0.0, 0.0  ]); 
																			
																		end;
																		
																		
																	debugMat( uvline );
																	
																end else begin
																			debugMat( 'no UVs ' );
																			
																			if face.n^ = 4 then
																			begin
																			
																				debugMat( 'all UV 4' );
																				//( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) )  ]); 
																				// 0 0     32 0    0 32     32 32   
																				
																				//41 1 F  T   0         0 0    32 0    0 32   32 32  
																				                     
																									// 0 0    32 0    0 32    32 32    																									 
																				
																				
																				
																				//uvline  :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f   ',[ ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) )  ]); 
																				uvline  :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f   ',[ ( map_w * (0.0) ),  ( map_h * (1.0-1.0) ) ,			( map_w * (1.0) ),  ( map_h * (1.0-1.0) ) ,		( map_w * (0.0) ),  ( map_h * (1.0-0.0) ) ,		( map_w * (1.0) ),  ( map_h * (1.0-0.0) )  ]); 
																		
																				
																				
																			
																			 end else begin
																				
																				// 0 0 32 0    0 32     32 32  
									//[ ( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) , 	( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) ) ,	( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,	0.0, 0.0  ]); 																	
																				
																			//	ShowMessage( 'all UV 3' );
																				
																				
																				// it's the same?
																																																 
																				
																				
																				
																			//uvline   :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f  ',[ ( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) , 	( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) ) ,	( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,	0.0, 0.0  ]); 
																			
																			uvline   :=  Format(' %.0f %.0f    %.0f %.0f    %.0f %.0f    %.0f %.0f  ',[ ( map_w * (1.0) ),  ( map_h * (1.0-1.0) ) , 	( map_w * (1.0) ),  ( map_h * (1.0-0.0) ) ,	( map_w * (0.0) ),  ( map_h * (1.0-0.0) ) ,	0.0, 0.0  ]); 
																			
																				
																		  end;
																
																	debugMat( uvline );
																//vtx1.y := 1.0;
																
																							
																//	if (face.uv[1]^ > 0 or face.uv[2]^ > 0 or face.uv[3]^ > 0) then
																end;
																
																
															
											end;
									end;
									
		// ShowMessage( 'test UV 2' );
		//   C Colored polygon/straight line, no texture
		//   T Textured polygon/sprite
		//   D Colored textured polygon
		//   G* Gradient filled polygon/straight line, no texture
		//   H* Gradient (shaded) textured polygon
		//    * no vert colours, so no Gradient support!
										 
													 
										// use 4th vert instead of 3rd
									if face.n^ = 4 then
									begin
													// CWAPIs.GetUVVertexProxy(obj, face.uv[3]^, vtx4);
													
													
													//  temp1 := '# faces  = 4 ' + IntToStr(rsd_cnt) + ' mat_r   ' + FloatToStr(mat_r)  + ' mat_g ' + FloatToStr(mat_g)  + ' mat_b ' + FloatToStr(mat_b) + ' mat_col ' +   FloatToStr(mat_col) + ' mat_text ' +  IntToStr(mat_text)+ ' mat_stype ' +  mat_stype + ' mat_Flag ' +   IntToStr(mat_Flag) + ' mat_text_rgb ' +  mat_text_rgb + '  mat_sRGB ' +  mat_sRGB ;
													//  WriteString( matfile, temp1);
													// debugMat( temp1 );
													 
													 
													 ////str = rsd_cnt .. " ".. param_lit .. " F T 0 "
														// ..  string.format("%d", param_text_w*(uv_4.y )) .. 
														// " " ..  string.format("%d", param_text_h*(1.0-uv_4.z) ) ..
														
														// " " ..  string.format("%d", param_text_w*(uv_3.y ) ) .. 
														// " " ..  string.format("%d", param_text_h*(1.0-uv_3.z) ).. 
														
														// " " ..  string.format("%d", param_text_w*(uv_1.y) ) .. 
														// " " ..  string.format("%d", param_text_h*(1.0-uv_1.z)) .. 
														
														
														// " " ..  string.format("%d", param_text_w* (uv_2.y) ).. 
														// " " ..  string.format("%d", param_text_h*(1.0-uv_2.z)) .. " \n"
												   
													 
													 if mat_text > -1 then // add
															begin
																			
																			//todo remove map_bit := StrToInt(blist.IndexOf(mat_text) );
																			 
																			//   T Textured polygon/sprite
																			//   D Colored textured polygon
																			if mat_col > 0.0 then
																			begin
																			//line  Lit TPYE TextNO U0 V0 U1 V1 U2 V2 U3 V3 R G B
																				mat_lineout  :=  IntToStr(rsd_cnt) + ' ' +  IntToStr(mat_Flag) + ' F ' +   mat_text_rgb +  '  ' + IntToStr(mat_text) ; 
																				
																				mat_lineout  := mat_lineout + ' ' + uvline + ' ' + mat_sRGB;
																				// mat_lineout  :=  Format('%d  %d  %s  %s  %s    %.4f %.4f    %.4f %.4f    %.4f %.4f    %.4f %.4f   %s  ',[rsd_cnt, 1, mat_Flag, 'D' , mat_text,    ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) ), mat_sRGB  ]); 
																			end else begin
																				// mat_lineout  :=  Format('%d  %d  %s  %s  %s    %.4f %.4f    %.4f %.4f    %.4f %.4f    %.4f %.4f    ',[rsd_cnt, 1, mat_Flag, 'T' , mat_text,     ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) )  ]); 
																				mat_lineout  :=  IntToStr(rsd_cnt) + ' ' + IntToStr(mat_Flag) + ' F ' +    mat_text_rgb +  '  ' +  IntToStr(mat_text) ; 
																				
																				
																				mat_lineout  := mat_lineout + ' ' + uvline + ' ' + mat_sRGB;
																			
																			
																			end;
																		
															end else begin
															//   C Colored polygon/straight line, no texture
															//   line shape lit TYPE R G B
															
																		 
																mat_lineout  :=   IntToStr(rsd_cnt)+ ' ' + IntToStr(mat_Flag) + ' ' +   ' F C ' + ' ' + mat_sRGB;
																
																				
															// if mat_text > -1 then	
															end;
													 
													WriteString( matfile, '#quad: ' +  IntToStr(rsd_cnt) + ' winding: 4312 ');
													
													//str(face.vertex[0]^, temp1);
													//str(face.vertex[1]^, temp2);
													//str(face.vertex[2]^, temp3);
													//str(face.vertex[3]^, temp4);
													//temp := IntToStr(rsd_cnt) + '   1 ' + temp4 + ' ' + temp3 + ' ' + temp1 + ' ' + temp2 + '  ' + temp4 + ' ' + temp3 + ' ' + temp1 + ' ' + temp2;
													//WriteString( matfile, temp);
													   //	mat_lineout  textureindex
													   
								// tri
									end else begin 
													
													//  temp1 := '# faces  = 3 ' + IntToStr(rsd_cnt) + ' mat_r   ' + FloatToStr(mat_r)  + ' mat_g ' + FloatToStr(mat_g)  + ' mat_b ' + FloatToStr(mat_b) + ' mat_col ' +   FloatToStr(mat_col) + ' mat_text ' +  IntToStr(mat_text)+ ' mat_stype ' +  mat_stype + ' mat_Flag ' +  IntToStr(mat_Flag) + ' mat_text_rgb ' +  mat_text_rgb + '  mat_sRGB ' +  mat_sRGB ;
													//	debugMat( temp1 );
													//  WriteString( matfile, temp1);
													 
					
													 if mat_text > -1 then // add
															begin
																			
																			// ShowMessage( temp1 );
																			 
																			//todo map_bit := StrToInt(blist.IndexOf(mat_text) );
																		
																			//   T Textured polygon/sprite
																			//   D Colored textured polygon
																			// str = rsd_cnt .. " ".. param_lit .. " F T 0 " .. 
																				// string.format("%d", param_text_w*(uv_3.y ) ) .. 
																				// " " ..  string.format("%d", param_text_h*(1.0-uv_3.z) ).. 
																				//" " ..   string.format("%d", param_text_w* (uv_2.y) ).. 
																				//" " ..  string.format("%d", param_text_h*(1.0-uv_2.z)) ..  
																				//" " .. string.format("%d", param_text_w*(uv_1.y) ) .. 
																				//" " ..  string.format("%d", param_text_h*(1.0-uv_1.z)) .. " 0 0 \n"
												  
											
																			if mat_col > 0.0 then
																			begin
																			//line  Lit TPYE TextNO U0 V0 U1 V1 U2 V2 U3 V3 R G B
																				mat_lineout  :=  IntToStr(rsd_cnt) + ' ' +  IntToStr(mat_Flag) + '  F ' + mat_text_rgb  + '  ' + IntToStr(mat_text) ; 
																				// ShowMessage(mat_lineout);
																				 
																				 
																				 // ShowMessage( IntToStr(map_w) + ' map_h: ' + IntToStr(map_h) );
																				 
																	
																					
																				// ShowMessage( temp1 );
																				mat_lineout  := mat_lineout + ' ' + uvline + ' ' + mat_sRGB;
																				
																				 // ShowMessage( mat_lineout );
																				// mat_lineout  :=  Format('%d  %d  %s  %s  %s    %.4f %.4f    %.4f %.4f    %.4f %.4f    %.4f %.4f   %s  ',[rsd_cnt, 1, mat_Flag, 'D' , mat_text,    ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) ), mat_sRGB  ]); 
																			end else begin
																				// mat_lineout  :=  Format('%d  %d  %s  %s  %s    %.4f %.4f    %.4f %.4f    %.4f %.4f    %.4f %.4f    ',[rsd_cnt, 1, mat_Flag, 'T' , mat_text,     ( map_w * (vtx4.y^) ),  ( map_h * (1.0-vtx4.z^) ) ,			( map_w * (vtx3.y^) ),  ( map_h * (1.0-vtx3.z^) ) ,		( map_w * (vtx1.y^) ),  ( map_h * (1.0-vtx1.z^) ) ,		( map_w * (vtx2.y^) ),  ( map_h * (1.0-vtx2.z^) )  ]); 
																				mat_lineout  :=  IntToStr(rsd_cnt) + ' ' +  IntToStr(mat_Flag) + ' F  ' + mat_text_rgb  + '  ' + IntToStr(mat_text) ; 
																				
																				 // ShowMessage( mat_lineout );
																				 
																				 // ShowMessage( IntToStr(map_w) + ' map_h: ' + IntToStr(map_h) );
																					
																				// ShowMessage( temp1 );
																				 
																				mat_lineout  := mat_lineout + ' ' + uvline  + ' ' + mat_sRGB;
																																
																				 // ShowMessage( mat_lineout );				
																			end;
																		
															end else begin
															//   C Colored polygon/straight line, no texture
															//   line shape lit TYPE R G B
															
																mat_lineout  :=   IntToStr(rsd_cnt)+ ' '+ IntToStr(mat_Flag) +' ' + ' F C ' + ' ' + mat_sRGB;
																
																				
															// if mat_text > -1 then	
															end;
										
									end;
									debugMat('writing to mat file');
									debugMat( mat_lineout );
									WriteString( matfile, mat_lineout);
									rsd_cnt := rsd_cnt+1
							
						end;
					end;
					output_message_text := output_message_text + output_message_text_temp;							
				
				finally
				  // ?2?I?ÅE?3?e???I?u?W?F?N?g?a?s?v?E?E?A???I?A?J?u?ÅE?e
				 // CWAPIs.ReleaseObject( doc, obj );
				  
				end;
				
				end else begin
					// if not sellect
					// temp := 'skipped, object not selected: ' + objname;
					//ShowMessage(temp);
				end;
			// end loop
			end;
  finally
	plyfile.Free;
	matfile.Free;
	rsdfile.Free;
	grpfile.Free;
	texturelist.Free;
  end;
		
		if (Length(output_stat_text) > 1 )  then
		begin
				
				if Length(output_message_text) > 1 then
				begin
						output_message_text := 'Warning!'+ ^M + ^J  +output_stat_text+ ^M + ^J  + output_message_text + ^M + ^J  + ^M + ^J ;
				end;
				
						
			output_message_text := 'Finished correctly'+ ^M + ^J  +output_stat_text + ^M + ^J  + ^M + ^J ;
						
						
				if  launchNoPSX > 1 then //ask
					begin
				
						 launchNoPSX := MessageBox(0, PChar(file_header_info + ^M + ^J + output_message_text + ^M + ^J  +  'The RSD files have been created, Do you want to: '  + ^M + ^J  + '(YES)        Create TMD and Launch NO$PSX?'  + ^M + ^J  + '(NO)         Just convert the RSD to TMD and exit, no No$PSX?' + ^M + ^J  +'(CANCEL) Nothing more, stop here?' ) , 'Launch NO$PSX?', MB_YESNOCANCEL	);
																
											
	
						// ShowMessage('launchNoPSX '+ IntToStr(launchNoPSX));
						
						
						if  launchNoPSX = IDYES then //show
						begin
						
						// ShowMessage('yes launchNoPSX '+ IntToStr(launchNoPSX));
						launchNoPSX :=1;
						
						end else begin
						
						
									
								if  launchNoPSX = IDCANCEL then //create tmds only
								begin
													
									// ShowMessage('cancel launchNoPSX '+ IntToStr(launchNoPSX));	
								
										launchNoPSX :=999;
										Exit; 									
									end else begin
									// ShowMessage('no launchNoPSX '+ IntToStr(launchNoPSX));
									launchNoPSX :=0;	
															
							
								end;														
					
						end;
				//end 	if  launchNoPSX > 1 then //ask
				end;
				
				
			
			// ShowMessage(' launchNoPSX '+ IntToStr(launchNoPSX));		
									

			if  launchNoPSX < 9 then //show
			begin
					//	if  launchNoPSX = 1 then //launch nopsx
					//		begin



					// ShowMessage(' launchNoPSX '+ IntToStr(launchNoPSX));		
					// ShowMessage(' filedirnamein '+filedirnamein);	

					temp1 :=  (ExcludeTrailingPathDelimiter(ExtractFilePath(filedirnamein))) ;

					// ShowMessage('export folder: '+temp1);		
					// ShowMessage('filenameonly: '+filenameonly);		
					// if FileExists(filedirname+'rsd')  then
					//	ShowMessage('launchNoPSX '+ IntToStr(launchNoPSX));

					temp2 := 'C:\MarbleCLAY\Plugin\PSX\rsdn.bat ' + filenameonly +  '  1.0 ' + IntToStr(launchNoPSX)+' ';

					// ShowMessage(temp2);

					temp2 := GetDosOutput(temp2,temp1);

					//  ShowMessage(temp2);			

					temp2 := GetDosOutput(temp2,temp1);
					//  ShowMessage(temp2);			
			end;
							
		end else begin			
					ShowMessage('ERROR, no model selected or no model data is present! Please select the model to export.');
				Exit;
		end;
		
		
		
		
  result := true;
end;
//  Obj
// function RSDExporter(doc : PCW_Document; info : PCW_TransporterInfo) : Boolean;
function OBJExporter(doc : PCW_Document; itemToExport: integer; filedirnamein :string; scale : real) : Boolean;
var
 i, objcount, tempi, tempi2 : integer;
  obj  : PCW_MeshObject;
 // pval_buff : Pointer;
 // buffsize : integer;
  objname : string;
  
 
 objfile, tempfile, matfile : TFileStream;
  temp,temp1, temp2, temp3, temp4 : string;
   tempa,tempb, tempc, tempd, tempe : string;
  segment : integer;
   matproxy : TCW_MaterialProxy;
		
  texturelist : TStringList;
  xlist : TStringList;
  ylist : TStringList;
  blist : TStringList;
  map_bit,map_w,map_h, textureindex : integer;
  tempname : string;
  // ?}?e???A?????I?OÅgE?dÅÒnÅhd?ÅE?e???s?I???X?g?i?Å 
   mat, submat : TCW_MaterialProxy;
  matname : string;
  mapname : PChar;
  mapnamesize : integer;
  mat_r,mat_g,mat_b, mat_c, mat_col: TCW_Float;
  mat_text : integer;
  mat_stype, mat_text_rgb, mat_Flag,  mat_sRGB, mat_lineout :string;
  map : PCW_ImageMap;
  output_message_text, output_stat_text, output_message_text_temp : string;
  
  j , k,  count, rsd_faces, rsd_cnt, faces4Count, textures  ,  obj_verts : integer;
    face : TCW_PolygonProxy;
	vtx , vtx1, vtx2, vtx3, vtx4 : TCW_VertexProxy;
	vt_x1, vt_x2, vt_x3, vt_x4  : real;
	vt_y1, vt_y2, vt_y3, vt_y4  : real;
	vt_z1, vt_z2, vt_z3, vt_z4  : real;
 
	vt_cross_x, vt_cross_y, vt_cross_z : real;	
	vt_norm_x, vt_norm_y, vt_norm_z : real;
	
	
	//vtx1_cross, vtx2_cross, vtx3_cross, vtx4_cross : TCW_VertexProxy;
	//vtx1_norm, vtx2_norm, vtx3_norm, vtx4_norm : TCW_VertexProxy;
	vert_len, tempf  : real;
	grey_scale : string;
   filenameonly ,filedirname: string;
	x,y,z,param_scale  : real; //  PCW_FLOAT; 
	var Xs,Ys,Bs, VImgX,VImgY,VCLUTX,VCLUTY: integer;
			
 // frz_option : TCW_FreezeOption; // b5.6
begin
         // ShowMessage(info.FileName);
	//filedirname := copy(info.FileName, 0, length(info.FileName)-4 ); //remove .rsd
	
	 // ShowMessage('ObjExporter itemToExport: ' + IntToStr( itemToExport) + ' <filedirnamein>'+filedirnamein+'</filedirnamein> scale: ' + FloatToStr(scale));
	
	
				// find installed dir
	temp4 := filedirnamein;
	//j :=  length(temp4);
	//str (j,temp1);
	// ShowMessage(temp1);
	filedirname := copy(filedirnamein, 0, length(filedirnamein)-4 ); //remove .rsd
	//  ShowMessage('<filedirname>'+filedirname+'</filedirname>');
	filenameonly := ExtractFileName(filedirname);
	//  ShowMessage('<filenameonly>'+filenameonly+'</filenameonly>');
	j :=  length(filenameonly);
	
	
	output_stat_text := '';
	
	 //if(j > 7) then
      //  begin
			// temp := 'Error: Filename ' + filenameonly + ' is too long, it must be 7 characters or less.';
			// ShowMessage(temp);
			// Exit;
       // end;
                
	
						
												
	// ShowMessage('scale');
	
	str (scale,temp1);
	// ShowMessage(temp1);
	
	
  param_scale :=   10.0*(scale);
  
  str (param_scale,temp1);
	// ShowMessage(temp1);
	
	
 
 // frz_option.size := sizeof(frz_option);
  try
   // WriteString( filestream, 'Metasequoia Document');
 //   WriteString( filestream, 'Format Text Ver 1.0');
  //  WriteString( filestream, '');
			objcount := CWAPIs.GetMeshObjectCount(doc);
			
	// ShowMessage('objcount');
	str (objcount,temp1);
	// ShowMessage(temp1);
	
	
			for i := 0 to objcount-1 do
			begin
			
						
				// ShowMessage('i');
				str (i,temp1);
				// ShowMessage(temp1);
				
	
			  obj := CWAPIs.GetMeshObject(doc,i); // ?I?u?W?F?N?g?d?aÅg?
				
				
				str (i,temp);
				str (objcount,temp1);
				temp := 'Object = ' + temp + ' of ' + temp1 ;			
			  //  ShowMessage(temp);
				  
			  // ?I?u?W?F?N?g?IÅeIÅed?oÅeO?d?aÅg?
			  //objselected := ObjectAttrInteger( obj, 'Activated' , 0); //2004.8.14 Selected->Activated?E?I?X
			  objname := ObjectAttrString( obj, 'Name', '(noname)');
			  
			  // ÅeIÅed?3?e?A?Åë?e?I?u?W?F?N?g?I?Y?d?G?N?X?|?[?g
			  if i = itemToExport then
			  begin
				
				 // ShowMessage(objname);
				
							
				// create material list - need for finding face.mat		
				texturelist := TStringList.Create;
				
				
				objfile := TFileStream.Create( filedirname + '.obj' , fmCreate );
				matfile := TFileStream.Create( filedirname + '.mtl' , fmCreate );
						
				// ShowMessage(file_header_info);
				
				
				WriteString(objfile, file_header_info);
				WriteString( matfile, file_header_info);
				// WriteString( matfile, '# mtl info: https://www.loc.gov/preservation/digital/formats/fdd/fdd000508.shtml');
					
				str (i,temp);
				str (itemToExport,temp1);
				temp := 'i = ' + temp + '= itemToExport ' + temp1 ;			
				//  ShowMessage(temp);
				   
				   	try
					count := CWAPIs.GetPolygonCount( obj );
					
					
					if (count > 0 ) then
					begin
					end else begin
							ShowMessage('ERROR, no model selected or no model data is present! Please select the model to export.');
							Exit;
					end;
					
					// str (count,temp1);					
					 // ShowMessage('count  of polys ' + temp1);
					 
					rsd_faces:=0;
					// first count real faces		
					for j := 0 to count do
					begin
						CWAPIs.GetPolygonProxy(obj, j, face);
						if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
						begin
								rsd_faces := rsd_faces+1;
								
								if face.n^ = 4 then
								begin
									obj_verts := obj_verts + 4;
									rsd_faces := rsd_faces+1;
									end else begin
									obj_verts := obj_verts + 3;
								end;
							
						end;
					end;
					
					rsd_faces := rsd_faces -1;
					
					
					
					str (rsd_faces,temp);
					temp := temp + ' valid faces';
					// ShowMessage(temp);   //displays -1, I expected 3-2
					mat_sRGB  := ' err: bad colour! ';
					
					
				//WriteString( matfile, '');
					
				// export bmp
					for j := 0 to count do
					begin
					  CWAPIs.GetMaterialProxy( doc, j, matproxy );
					 // mat.index^ := j; //// Save the index for later getting the material index value from the material pointer ?a?A?}?e???A???|?C?Åg?^?c?c?}?e???A???I?C?Åg?f?b?N?XÅfl?dÅg??e???s?E?C?Åg?f?b?N?X?d?UÅeÅ˜
						// CWAPIs.MakeMaterialProxy(face.mat^, matproxy);
					
						// WriteString( rsdfile, '# matname: ' + matproxy.name);
					
					
																			
														
						// file already open with another image in model
						
				
						if Pos('_DefaultMat_', matproxy.name) > 0 then
						begin
						
						
						end else begin 
						//good material
						
							
									
// https://www.loc.gov/preservation/digital/formats/fdd/fdd000508.shtml
//     Ka: specifies ambient color, to account for light that is scattered about the entire scene [see Wikipedia entry for Phong Reflection Model] using values between 0 and 1 for the RGB components.
//     Kd: specifies diffuse color, which typically contributes most of the color to an object [see Wikipedia entry for Diffuse Reflection]. In this example, Kd represents a grey color, which will get modified by a colored texture map specified in the map_Kd statement
//     Ks: specifies specular color, the color seen where the surface is shiny and mirror-like [see Wikipedia entry for Specular Reflection].
//     Ns: defines the focus of specular highlights in the material. Ns values normally range from 0 to 1000, with a high value resulting in a tight, concentrated highlight.
//     Ni: defines the optical density (aka index of refraction) in the current material. The values can range from 0.001 to 10. A value of 1.0 means that light does not bend as it passes through an object.
//     d: specifies a factor for dissolve, how much this material dissolves into the background. A factor of 1.0 is fully opaque. A factor of 0.0 is completely transparent.
//     illum: specifies an illumination model, using a numeric value. See Notes below for more detail on the illum keyword. The value 0 represents the simplest illumination model, relying on the Kd for the material modified by a texture map specified in a map_Kd statement if present. The compilers of this resource believe that the choice of illumination model is irrelevant for 3D printing use and is ignored on import by some software applications. For example, the MTL Loader in the threejs Javascript library appears to ignore illum statements. Comments welcome.
//     map_Kd: specifies a color texture file to be applied to the diffuse reflectivity of the material. During rendering, map_Kd values are multiplied by the Kd values to derive the RGB components.
							WriteString( matfile, '');
				
							matname := matproxy.name;
							tempi := Pos('~', matname);	
							if tempi > 0 then												
							begin
								matname := Copy(matname, 0,tempi-1);
								matname := Trim(matname);
							end;
							WriteString( matfile, 'newmtl '+ matname);
							WriteString( matfile, 'Ka 1.00 1.00 1.00');
						
						
									
						if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Diffuse', submat) then
									begin
										if submat.typ^ in [CW_MATVALUE_Color3, CW_MATVALUE_Vector4] then
										begin
											CWAPIs.GetMaterialValueVec4( submat.instance, mat_r,mat_g,mat_b,mat_c );
											// mat_sRGB :=  ' ' + FloatToStr(255*mat_r) + ' '  + FloatToStr(255*mat_g) + ' ' + FloatToStr(255*mat_b) + ' ';
												mat_sRGB  :=  Format(' %.5f %.5f %.5f ',[ (mat_r), (mat_g), (mat_b)  ]); 
												// ShowMessage(mat_sRGB);
												 WriteString( matfile, 'Kd ' + mat_sRGB);
												// WriteString( matfile, '#read RGB: ' + mat_sRGB + ' from  ' + matproxy.name + ' index: ' + IntToStr(matproxy.index^) + ' ' + submat.name);
														
																			
										end;
									end;
									
								
						// do only textures, to resize, convert and count them
						if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'DiffuseMap', submat) then
						begin
							CWAPIs.GetMaterialMap( submat.instance, map);
							if map <> nil then
							begin
								  // b5.5.1
								  mapnamesize := CWAPIs.GetImageMapName( map, nil , 0 );
								  if mapnamesize > 0 then
								  begin
											GetMem(mapname, mapnamesize);
											try
												  if CWAPIs.GetImageMapName( map, mapname, mapnamesize) > 0 then
												  begin
														temp := 'processing mat ' + IntToStr(j) + ' ' +  mapname;
														// ShowMessage( temp );
														tempname := mapname;
														textureindex := texturelist.IndexOf(tempname);
														
														
														// temp := ' textureindex in texturelist : ' + IntToStr(textureindex) ;
														// ShowMessage( temp );
														if textureindex = -1 then // add
														begin
																texturelist.Add(tempname);
														
																//WriteString( rsdfile, '# submat: ' + submat.name);
																//WriteString( rsdfile, '# ');
																//WriteString( rsdfile, '# added: ' + tempname + ' index: ' + IntToStr(textures) );
																temp3 := copy(mapname, 0, length(mapname)-3);
																// ShowMessage(temp3);
													
																//WriteString( rsdfile, '# path and name must have no spaces or special characters');
																//WriteString( rsdfile, '#TEX[' + IntToStr(textures)+ ']="' +PChar(filedirname)+IntToStr(textures)+'tim"');
																
																// GetMem(map, mapnamesize);
																mapnamesize := SizeOf(map);
							//TCWAPI_SaveImageMap = function (map : PCW_ImageMap; name : PChar; size : TCW_INT): TCW_BOOLEAN; stdcall;
																CWAPIs.SaveImageMap(map, PChar(filedirname+IntToStr(textures)+'.bmp'), mapnamesize);
																
															//	ShowMessage('saved DiffuseMap ' + submat.name);
																 
																// ShowMessage('saved to ' + PChar(filedirname+IntToStr(textures)+'.bmp'));
																
																//texturelist.Strings[textureindex] := tempname + IntToStr(textureindex);
																//tempname := tempname + IntToStr(j);
																
																//tempi := LastDelimiter('~', matproxy.name);		
																
																		
																		
																		 temp1 :=  ' dir "' + PChar( filedirname+IntToStr(textures)+'.bmp"');
																		 //ShowMessage(temp1);
																		 
																		temp2 := GetDosOutput(temp1 );
																		// ShowMessage(temp2);
																		
																		
																		// BMP exist continue to tim conversion
								//local s = "start magick.exe  -auto-level -resize "  .. param_text_w+1  .. "x" .. param_text_h+1 .. " -type palette -depth ".. param_TIM_Depth .. " "  .. param_raw_texture_filename.. "  " .. param_outfile .. ".bmp >> " .. param_outfile..".log"
																								
																		if Pos(filenameonly+IntToStr(textures)+'.bmp', temp2) > 1 then
																		begin
																		
																		textureindex :=  textures;																		
																		textures := textures +1;
																		end else begin
																		// no textures
																			ShowMessage('Error: BMP not found, Texture needs manual exporting first, click material ('+ matproxy.name +') > DiffuseMap > Import > right click > last option.'  );
																			Exit;
																		end;
																		
														end else begin
															//  textures already there
														end;
															
															// WriteString( matfile, '#  Ks: specifies specular color, the color seen where the surface is shiny and mirror-like [see Wikipedia entry for Specular Reflection].');
															WriteString( matfile, 'Ks 1.00 1.00 1.00');
															
															
															// Transparency, I couldn't get it working on assimp viewer, with alph on .png using Tr illum values  https://developer.apple.com/forums/thread/81950
															// WriteString( matfile, '#    illum: specifies an illumination model, using a numeric value. The value 0 represents the simplest illumination model, relying on the Kd for the material modified by a texture map specified in a map_Kd statement if present. .');
															WriteString( matfile, 'illum 0');
															
															
															
															// WriteString( matfile, '#    Ns: defines the focus of specular highlights in the material. Ns values normally range from 0 to 1000, with a high value resulting in a tight, concentrated highlight.');
															mat_c := 0.5; //default to half
															
																// light calculations on or of
																if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'Specular', submat) then
																begin
																	if submat.typ^ in [CW_MATVALUE_Value1, CW_MATVALUE_Value255] then
																	begin
																	  CWAPIs.GetMaterialValueVal1( submat.instance, mat_c );
																	 
																	end;
																end;
																
															WriteString( matfile, 'Ns ' + FloatToStr(mat_c * 1000.0) );
																													
															// WriteString( matfile, '#   map_Kd: specifies a color texture file to be applied to the diffuse reflectivity of the material. During rendering, map_Kd values are multiplied by the Kd values to derive the RGB components.');
															WriteString( matfile, 'map_Kd ' + PChar(filenameonly+IntToStr(textureindex)+'.bmp') );
															
														
												
													end else begin
													//WriteString( rsdfile, '#found TEX[' + IntToStr(textureindex)+ ']="' +texturelist.Strings[textureindex]);
														ShowMessage('Error: bad material name?? ('+ matproxy.name +')' );
														exit;	
													end;
											finally
											  FreeMem(mapname);
											end;
								  //no mapnamesize
								 end;
							// no mapfile
							end;
						//DiffuseMap
						end;
				
						// do only textures, to resize, convert and count them
						if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'BumpMap', submat) then
						begin
							CWAPIs.GetMaterialMap( submat.instance, map);
							if map <> nil then
							begin
								  // b5.5.1
								  mapnamesize := CWAPIs.GetImageMapName( map, nil , 0 );
								  if mapnamesize > 0 then
								  begin
											GetMem(mapname, mapnamesize);
											try
												  if CWAPIs.GetImageMapName( map, mapname, mapnamesize) > 0 then
												  begin
														temp := 'processing mat ' + IntToStr(j) + ' ' +  mapname;
														 // ShowMessage( temp );
														tempname := mapname;
														textureindex := texturelist.IndexOf(tempname);
														
														
														temp := ' textureindex in texturelist : ' + IntToStr(textureindex) ;
														// ShowMessage( temp );
														if textureindex = -1 then // add
														begin
																texturelist.Add(tempname);
														
																//WriteString( rsdfile, '# submat: ' + submat.name);
																//WriteString( rsdfile, '# ');
																//WriteString( rsdfile, '# added: ' + tempname + ' index: ' + IntToStr(textures) );
																temp3 := copy(mapname, 0, length(mapname)-3);
																//  ShowMessage(temp3);
													
																//WriteString( rsdfile, '# path and name must have no spaces or special characters');
																//WriteString( rsdfile, '#TEX[' + IntToStr(textures)+ ']="' +PChar(filedirname)+IntToStr(textures)+'tim"');
																
																// GetMem(map, mapnamesize);
																mapnamesize := SizeOf(map);
							//TCWAPI_SaveImageMap = function (map : PCW_ImageMap; name : PChar; size : TCW_INT): TCW_BOOLEAN; stdcall;
																CWAPIs.SaveImageMap(map, PChar(filedirname+IntToStr(textures)+'.bmp'), mapnamesize);
																
																// ShowMessage('saved BumpMap ' + submat.name);
																 
																// ShowMessage('saved to ' + PChar(filedirname+IntToStr(textures)+'.bmp'));
																
																//texturelist.Strings[textureindex] := tempname + IntToStr(textureindex);
																//tempname := tempname + IntToStr(j);
																
																//tempi := LastDelimiter('~', matproxy.name);		
																
																		
																		
																		
	
																		
																		 temp1 :=  ' dir "' + PChar( filedirname+IntToStr(textures)+'.bmp"');
																		 //ShowMessage(temp1);
																		 
																		temp2 := GetDosOutput(temp1 );
																		//ShowMessage(temp2);
																		
																		
																		// BMP exist continue to tim conversion
								//local s = "start convert  -auto-level -resize "  .. param_text_w+1  .. "x" .. param_text_h+1 .. " -type palette -depth ".. param_TIM_Depth .. " "  .. param_raw_texture_filename.. "  " .. param_outfile .. ".bmp >> " .. param_outfile..".log"
																								
																		if Pos(filenameonly+IntToStr(textures)+'.bmp', temp2) > 1 then
																		begin
																																			// WriteString( matfile, 'map_Bump ' + PChar(filenameonly+IntToStr(textures)+'.bmp') );
																			// WriteString( matfile, '');
																
																		textureindex :=  textures;																		
																		textures := textures +1;
																		
																		end else begin
																		// no textures
																			ShowMessage('Error: BMP not found, Texture needs manual exporting first, click material ('+ matproxy.name +') > DiffuseMap > Import > right click > last option.'  );
																			Exit;
																		end;
																		
														end else begin
															//  textures already there
															
															
														end;
														WriteString( matfile, '# Assimp doesnt use map_Bump' );
														
														// WriteString( matfile, 'map_Bump ' + PChar(filenameonly+IntToStr(textureindex)+'.bmp') );
														
														WriteString( matfile, 'map_Kn ' + PChar(filenameonly+IntToStr(textureindex)+'.bmp') );
																
												
													end else begin
													//WriteString( rsdfile, '#found TEX[' + IntToStr(textureindex)+ ']="' +texturelist.Strings[textureindex]);
														ShowMessage('Error: bad material name?? ('+ matproxy.name +')' );
														exit;	
													end;
											finally
											  FreeMem(mapname);
											end;
								  //no mapnamesize
								 end;
							// no mapfile
							end;
						//DiffuseMap
						end;
					//good material
					end;
					
					
					
					//for	
					end;
// write objfile
		
					
					if textures = 0 then
					begin
						
						mat_sRGB  := ' 0.5 0.5 1.0 ';
						
						// create no material just in case
						WriteString( matfile, '');
						WriteString( matfile, 'newmtl _DefaultMat_');
						WriteString( matfile, 'Ka 0.00 0.00 0.00');
						WriteString( matfile, 'Kd ' + mat_sRGB);
							
					end;
					
						
					if (rsd_faces > 0 )  then
					begin
						str (rsd_faces,temp2);
						str (obj_verts,temp);
						output_stat_text := '#Model ' + objname +' has: ' + temp + ' Verts ' +  temp2 + ' faces' ;
					end else begin
							ShowMessage('ERROR, no model selected or no model data is present! Please select the model to export.');
							Exit;
					end;
			
					// get all verts
					// obj_verts := CWAPIs.GetValidVertexCount( obj , false, 0, 0); // Get valid vertex count
					//	obj_verts := CWAPIs.GetVertexCount( obj , false); // get vertex array count
					 
					
				
					
					
					
					output_stat_text := output_stat_text +' textures: ' + IntToStr(textures);
					temp1 :=  'mtllib ' +	filenameonly +'.mtl';
					WriteString( objfile,temp1);	
					
					
					WriteString( objfile, output_stat_text);
					
					
					WriteString( objfile, 'o '+filenameonly);
		// write all verts
				
			//		ShowMessage('#verts rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );
					rsd_cnt := 0;
							
					for j := 0 to count-1 do
					begin
					
					
// ShowMessage('2.');
		
						CWAPIs.GetPolygonProxy(obj, j, face);		
// ShowMessage('3.');
		
		
								 if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
									//all verts
									// if (true) then
									begin					
									
									rsd_cnt := rsd_cnt + 1;
									// WriteString( objfile, '# Vert: rsd_cnt: ' + IntToStr(rsd_cnt) + ' j: ' + IntToStr(j) );
									
									CWAPIs.GetVertexProxy(obj, face.vertex[0]^, vtx1);
		//	// ShowMessage(temp4);
									CWAPIs.GetVertexProxy(obj, face.vertex[1]^, vtx2);
		// 	// ShowMessage(temp4);
									CWAPIs.GetVertexProxy(obj, face.vertex[2]^, vtx3);
		//	// ShowMessage(temp4);
								// vert flip
								// x := vtx.y^ * param_scale;						
								// y := vtx.z^ * -param_scale;
								// z := vtx.x^ * param_scale;
								
									vt_x1 := (vtx1.y^);
									vt_y1 :=  (vtx1.z^);
									vt_z1 := (vtx1.x^);
									
									vt_x2 := (vtx2.y^);
									vt_y2 :=  (vtx2.z^);
									vt_z2 := (vtx2.x^);
									
									vt_x3 := (vtx3.y^);
									vt_y3 :=  (vtx3.z^);
									vt_z3 := (vtx3.x^);
									
									vt_x1 := param_scale*vt_x1;
									vt_y1 := param_scale*vt_y1;
									vt_z1 := param_scale*vt_z1;
									
									vt_x2 :=param_scale*vt_x2;
									vt_y2 :=  param_scale*vt_y2;
									vt_z2 :=param_scale*vt_z2;
									
									
									vt_x3 :=param_scale*vt_x3;
									vt_y3 :=param_scale*vt_y3;
									vt_z3 := param_scale*vt_z3;
									
									
									
		
								
									temp := Format('v %f %f %f ',[vt_x1, vt_y1, vt_z1]);
									WriteString( objfile, temp);
									
									temp := Format('v %f %f %f ',[vt_x3, vt_y3, vt_z3]);
									WriteString( objfile, temp);
									
									temp := Format('v %f %f %f ',[vt_x2, vt_y2, vt_z2]);
									WriteString( objfile, temp);
										
										
									// must be split - most obj importers dont like quads!
									if face.n^ = 4 then
									begin
									
									
										// replace vert3 with vert4
										CWAPIs.GetVertexProxy(obj, face.vertex[3]^, vtx4);
										 
										
										vt_x4 := (vtx4.y^);
										vt_y4 :=  (vtx4.z^);
										vt_z4 := (vtx4.x^);
										
										vt_x4 := (vt_x4*param_scale);
										vt_y4 :=  (vt_y4*param_scale);
										vt_z4 := (vt_z4*param_scale);
										
										// WriteString( objfile, '# quad = 2 tris ----------------------------------------------------------------------------');									
										temp := Format('v %f %f %f ',[vt_x4, vt_y4, vt_z4]);
									    WriteString( objfile, temp);
										// WriteString( objfile, '# quad = 2 tris ----------------------------------------------------------------------------');									
													
									
									
	
									end;
									
;
										
										
								//	if valid
								end;
					//for
					end;
// ShowMessage('2.');
		
				WriteString( objfile, '# ');
				
				
				
				
					// ShowMessage('#UV  rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );
				// write UV
					faces4Count := 0;
					rsd_cnt := 0;
							
					for j := 0 to count-1 do
					begin
					
// ShowMessage('2.');
		
						CWAPIs.GetPolygonProxy(obj, j, face);		
	
		
								if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
								//	if(true)then
									begin					
														
												 rsd_cnt := rsd_cnt + 1;
												// ShowMessage(IntToStr(face.uv[0]^) + ': face.uv[0]' );
												
												//if ( (face.uv[0]^ > 0) or (face.uv[1]^ > 0) or (face.uv[2]^ > 0) ) then
												
												CWAPIs.MakeMaterialProxy(face.mat^, matproxy);
												if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'DiffuseMap', submat) then												
												begin
													
												//	ShowMessage( 'test UV 1' );
																
															
																			CWAPIs.GetMaterialMap( submat.instance, map);
																			if map <> nil then
																			// if true then
																			begin							
																								
																					if ( (face.uv[0]^ > 0) or (face.uv[1]^ > 0) or (face.uv[2]^ > 0) ) then												
																					begin
																									//WriteString( objfile, '# real UV: rsd_cnt: ' + IntToStr(rsd_cnt) + ' j: ' + IntToStr(j) );
																								
																									// vert flip
																									// x := vtx.y^ * param_scale;						
																									// y := vtx.z^ * param_scale;
																									// z := vtx.x^ * param_scale;
																																	
																								
																									CWAPIs.GetUVVertexProxy(obj, face.uv[0]^, vtx1);
																									CWAPIs.GetUVVertexProxy(obj, face.uv[1]^, vtx2);
																									CWAPIs.GetUVVertexProxy(obj, face.uv[2]^, vtx3);
																								
																																								
																																								
																									vt_y1 := (vtx1.y^);
																									vt_z1 :=  (vtx1.z^); 
																									
																									vt_y2 := (vtx2.y^);
																									vt_z2 :=  (vtx2.z^); 
																									
																									vt_y3 := (vtx3.y^);
																									vt_z3 :=  (vtx3.z^);  
																									
																									
																									temp := Format('vt %.15f %.15f',[vt_y1,vt_z1]);
																									WriteString( objfile, temp);
																	
																									temp := Format('vt %.15f %.15f',[vt_y3, vt_z3]);
																									 WriteString( objfile, temp);
																									temp := Format('vt %.15f %.15f',[vt_y2,vt_z2]);
																									WriteString( objfile, temp);
																								
																									
																									
																									if face.n^ = 4 then
																									begin
																										CWAPIs.GetUVVertexProxy(obj, face.uv[3]^, vtx4);
																											
																										vt_y4 := (vtx4.y^);
																										vt_z4 :=  (vtx4.z^);  
																										
																										temp := Format('vt %.15f %.15f',[vt_y4, vt_z4]);
																										WriteString( objfile, temp);
																									end;
																									
																						
																						
																					end else begin
																					// no uv map used
																					
																								//WriteString( objfile, '# image face with no UV: rsd_cnt: ' + IntToStr(rsd_cnt) + ' j: ' + IntToStr(j) );
																								
																									//#top left
																									//vt 0.00 0.00
																									//#bot right
																									//vt 1.0 1.0
																									//#top right
																									//vt 1.0 0.0
																									temp := Format('vt %f %f',[0.0, 0.0]);
																									 WriteString( objfile, temp);
																	
																									temp := Format('vt %f %f',[1.0, 1.0]);
																									 WriteString( objfile, temp);
																								
																									temp := Format('vt %f %f',[1.0, 0.0]);
																									 WriteString( objfile, temp);
																									
																									
																									if face.n^ = 4 then
																									begin
																																			
																										temp := Format('vt %f %f',[0.0, 1.0]);
																										WriteString( objfile, temp);
																									end;
																						// uv		
																					end;
																					
																//f map <> nil the	
																end else begin
				
																								//WriteString( objfile, '#  image but not on face, use no UV : rsd_cnt: ' + IntToStr(rsd_cnt) + ' j: ' + IntToStr(j) );
																																											
																								temp := Format('vt %f %f',[0.0, 0.0]);
																								 WriteString( objfile, temp);
																
																								temp := Format('vt %f %f',[0.0, 0.0]);
																								 WriteString( objfile, temp);
																							
																								temp := Format('vt %f %f',[0.0, 0.0]);
																								 WriteString( objfile, temp);
																								
																								
																								if face.n^ = 4 then
																								begin
																																		
																									temp := Format('vt %f %f',[0.0, 0.0]);
																									WriteString( objfile, temp);
																								end;
																								
																end;	
												//if CWAPIs.FindSubMaterialProxy( doc, @matproxy, 'DiffuseMap', submat) then	
												
													end;																	
																	
										
								//	if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
								end;
					//for
					end;
				
				WriteString( objfile, '# ');
				WriteString( objfile, 's off  ');
// ShowMessage('vn.');
		
			
// ShowMessage('#normals rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );		
	
				//-- normal calculation from: 
				// none			
				
				
			
			
// ShowMessage('faces usemtl');
					faces4Count := 0;
					matname := '0'; //defaults no material
							
					// WriteString( objfile, '#rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );
				//	ShowMessage('#faces rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );
					rsd_cnt := 0;
							
					for j := 0 to count-1 do
					begin
					
					
// ShowMessage('2.');
		
						CWAPIs.GetPolygonProxy(obj, j, face);		
// ShowMessage('3.');
								if (face.tag^ and CWBIT_TAG_INVALID = 0) or (face.tag^ and CWBIT_TAG_MIRROR = 1) then
									begin					
									
												
										//		WriteString( objfile, '# face: rsd_cnt: ' + IntToStr(rsd_cnt) + ' j: ' + IntToStr(j) );
												CWAPIs.MakeMaterialProxy(face.mat^, matproxy);
														
														if CompareStr(matproxy.name, matname) = 0 then
															begin
																
															end else begin
																matname := matproxy.name;
																tempi := Pos('~', matname);	
																if tempi > 0 then												
																begin
																	matname := Copy(matname, 0,tempi-1);
																	matname := Trim(matname);
																end;
																
																WriteString( objfile, 'usemtl ' + matname);
																
															end;
											
											// WriteString( objfile, '#face  ' + IntToStr(j) );
											
// http://paulbourke.net/dataformats/obj/	
//A right-hand coordinate syste
// The following is a portion of a sample file for a four-sided face
// element:										
// f 1/1/1 2/2/2 3/3/3 4/4/4
// Using v, vt, and vn to represent geometric vertices, texture vertices,
// and vertex normals, the statement would read:
// f v/vt/vn v/vt/vn v/vt/vn v/vt/vn
											if face.n^ = 4 then
											//if false then
											begin		
													
													// 1,2,3,
													// 1,4,2
												//	WriteString( objfile, '# quad = 2 tris ----------------------------------------------------------------------------');									
													temp := Format('f  %d/%d/  %d/%d/  %d/%d/ ',[ (rsd_cnt*3)+faces4Count+1,(rsd_cnt*3)+faces4Count+1,        (rsd_cnt*3)+faces4Count+2,   (rsd_cnt*3)+faces4Count+2,        (rsd_cnt*3)+faces4Count+3 , (rsd_cnt*3)+faces4Count+3  ]  );
													WriteString( objfile, temp);
													
													temp := Format('f  %d/%d/  %d/%d/  %d/%d/  ',[  (rsd_cnt*3)+faces4Count+1,(rsd_cnt*3)+faces4Count+1,       (rsd_cnt*3)+faces4Count+4,  (rsd_cnt*3)+faces4Count+4,        (rsd_cnt*3)+faces4Count+2, (rsd_cnt*3)+faces4Count+2  ]  );
													WriteString( objfile, temp);
													
												//	WriteString( objfile, '# quad = 2 tris ----------------------------------------------------------------------------');									
													faces4Count := faces4Count +1;
													
													
													
												end else begin								
																						
												//working	temp := Format('f  %d/%d/  %d/%d/  %d/%d/  ',[ (rsd_cnt*3)+faces4Count+1,  (rsd_cnt*3)+faces4Count+1,  (rsd_cnt*3)+faces4Count+2, (rsd_cnt*3)+faces4Count+2, (rsd_cnt*3)+faces4Count+3 ,(rsd_cnt*3)+faces4Count+3  ]  );
													
													
													
													temp := Format('f  %d/%d/  %d/%d/  %d/%d/  ',[ (rsd_cnt*3)+faces4Count+1,  (rsd_cnt*3)+faces4Count+1,          (rsd_cnt*3)+faces4Count+2,  (rsd_cnt*3)+faces4Count+2,      (rsd_cnt*3)+faces4Count+3 , (rsd_cnt*3)+faces4Count+3  ]  );
														
													
													WriteString( objfile, temp);
										
											end;
											
												
												rsd_cnt := rsd_cnt + 1;
														
								//	if valid
								end;
					//for
					end;
				//write spare face
				//temp := Format('f  %d/%d/%d  %d/%d/%d  %d/%d/%d',[(rsd_cnt*3)+faces4Count+1, (rsd_cnt*3)+faces4Count+1, (rsd_cnt*3)+faces4Count+1,        (rsd_cnt*3)+faces4Count+2, (rsd_cnt*3)+faces4Count+2, (rsd_cnt*3)+faces4Count+2,      (rsd_cnt*3)+faces4Count+3, (rsd_cnt*3)+faces4Count+3, (rsd_cnt*3)+faces4Count+3]);
				//WriteString( objfile, temp);
				
				
				
			//		ShowMessage('#FIN  rsd_faces ' + IntToStr(rsd_faces) + ' count ' + IntToStr(count) );
// WriteString( objfile,'ass');
											
				
  finally
	matfile.Free;
	objfile.Free;
	texturelist.Free;
  end;
  end;
  
  end;
  
  finally
  
  end;
  
  end;
  
  
end.