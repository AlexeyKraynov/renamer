program renamer2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var f_oldname, f_oldpath, f_newname, f_ext : string;
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
  m_year, m_month, m_day, m_hour, m_min, m_sec: string;
  filename: string;
  file1:textfile;
begin
  if ParamCount < 1 then writeln('Renamer2.exe ver_2025.11.15. (c) puff@mail.ru');
  if ParamCount < 1 then writeln('Rename file with date: t.txt -> 2025.08.28_11#25#00_t.txt');
  if ParamCount < 1 then writeln('           format of date_time = YYYY.MM.DD_HH24#MI#SS and cannot be changed. Use date_reformatter.exe for date format change');
  if ParamCount < 1 then writeln('           . must be in file name :) or does not work');
  if ParamCount < 1 then writeln('   Usage: renamer <file_name> ');
  if ParamCount > 1 then writeln('Too much parameters');
  if ParamCount =1 then
        begin
        filename:=ExtractFileName(ParamStr(1));

        f_oldname:=ExtractFileName(ParamStr(1));
        f_oldpath:=ExtractFilePath(ParamStr(1));
        if Pos('.',f_oldname) > 0 then
                begin
                f_ext:=Copy(f_oldname, (Pos('.',f_oldname)), 4);
                
                DecodeDate(Now,Year,Month,Day);
                DecodeTime(Now,Hour,Min,Sec,MSec);
                m_year:=IntToStr(Year);
                if Month<10 then m_month:='0'+IntToStr(Month)
                else m_month:=IntToStr(Month);
                if Day<10 then m_Day:='0'+IntToStr(Day)
                else m_Day:=IntToStr(Day);
                if Hour<10 then m_Hour:='0'+IntToStr(Hour)
                else m_Hour:=IntToStr(Hour);
                if Min<10 then m_Min:='0'+IntToStr(Min)
                else m_Min:=IntToStr(Min);
                if Sec<10 then m_Sec:='0'+IntToStr(Sec)
                else m_Sec:=IntToStr(Sec);

                // Новый формат: дата_старое_имя.расширение
                f_newname:= m_Year
                           +'.'+m_Month
                           +'.'+m_Day
                           +'_'+m_Hour
                           +'#'+m_Min
                           +'#'+m_Sec
                           +'_'
                           + Copy(f_oldname,0,Pos('.',f_oldname)-1)
                           + f_ext;

                if not (RenameFile((f_oldpath+f_oldname), (f_oldpath+f_newname)))
                  then writeln('File with new name already exists or source file cannot be located')
                 else
                  writeln(f_oldpath+f_oldname+' -> '+f_newname);
                 end ;

       end
end.
