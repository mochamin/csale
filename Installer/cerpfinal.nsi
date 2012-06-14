; example2.nsi
;
; This script is based on example1.nsi, but it remember the directory, 
; has uninstall support and (optionally) installs start menu shortcuts.
;
; It will install example2.nsi into a directory that the user selects,

;--------------------------------

; The name of the installer
Name "CahayaPitu cERP 2.0"

Var MySQLDir

Section "-Inisialisasi Variabel"
	StrCpy $MySQLDir "D:\mySQL\MySQL Server 5.0"
SectionEnd

; The file to write
OutFile "cERP 2.0 Setup.exe"

; The default installation directory
InstallDir $PROGRAMFILES\CahayaPitu

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "Software\CahayaPitu" "Install_Dir"

; Request application privileges for Windows Vista
RequestExecutionLevel admin

;--------------------------------

; Pages

Page components
Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

;--------------------------------

; The stuff to install
Section "cERP (required)"

  SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "mysql-5.5.24-win32.msi"
  
  ;run the installer 
  ;Exec '"$INSTDIR\mysql-5.5.24-win32.msi"'
   DetailPrint "Instalasi Server MySQL. Mohon tunggu..."
   ExecWait 'msiexec /i "$INSTDIR\mysql-5.5.24-win32.msi" /quiet INSTALLDIR="D:\mySQL\MySQL Server 5.0" '
  ;Exec 'D:\mySQL\MySQL Server 5.0\bin\mysqld-nt" --install MySQL --defaults-file="D:\mySQL\MySQL Server 5.0\my.ini" '
   DetailPrint "Instalasi Service MySQL..."
   ExecWait '"D:\mySQL\MySQL Server 5.0\bin\mysqld.exe" install mysql'
   DetailPrint "Menjalankan Service  MySQL..."
   ExecWait 'net start mysql'
   DetailPrint "Konfigurasi Hak Akses  MySQL..."
   ExecWait '"D:\mySQL\MySQL Server 5.0\bin\mysqladmin.exe" -uroot password yaallah'
   
   ;menghapus user default1 (user=blank, password=blank)
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "DELETE FROM mysql.user WHERE Host=$\'localhost$\' AND User=$\'$\'"'
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "FLUSH PRIVILEGES"'

			;menghapus user default2 (user=root, password=blank)
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "DELETE FROM mysql.user WHERE Host=$\'127.0.0.1$\' AND User=$\'root$\'"'
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "FLUSH PRIVILEGES"'

			;set agar user root bisa login dari mesin lain (kalo diperlukan)
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "GRANT ALL PRIVILEGES ON *.* TO root@$\'%$\' IDENTIFIED BY $\'yaallah$\'"'
			ExecWait '"$MySQLDir\bin\mysql.exe" -uroot -pyaallah -e "FLUSH PRIVILEGES"'
 
  ; Write the installation path into the registry
  WriteRegStr HKLM SOFTWARE\CahayaPitu "Install_Dir" "$INSTDIR"
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\cERP" "DisplayName" "cERP"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\cERP" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\cERP" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\cERP" "NoRepair" 1
  WriteUninstaller "uninstall.exe"
  
SectionEnd

Section "Dependencies Files (Required)"
  SectionIn RO
  
  File "project\dclclxdb70.bpl"
  File "project\dclclxstd70.bpl"
  File "project\dcldb70.bpl"
  File "project\dclsmp70.bpl"
  File "project\dbx70.bpl"
  File "project\dclstd70.bpl"
  File "project\dclofficexp70.bpl"
  File "project\dclrave70.bpl"
  File "project\zcomponentdesign70.bpl"
  File "project\merp.exe"
  File "project\do.rav"
  File "project\fakturpajak.rav"
  File "project\gl.rav"
  File "project\glpro.rav"
  File "project\invoice.rav"
  File "project\invoice.rav"
  File "project\jual.rav"
  File "project\lr.rav"
  File "project\neraca.rav"
  File "project\po.rav"
  File "project\po_list.rav"
  File "project\project.rav"
  File "project\quotation.rav"
  File "project\slipgaji.rav"
  File "project\qtintf70.dll"
  File "project\libmysql.dll"
  
  
SectionEnd

Section "Install Database"
		SetOutPath $MySQLDir\bin

		File "merp.sql"
		File "exec.bat"

		

		
		
			;menjalankan file batch exec.cmd untuk melakukan proses undump
			ExecWait '"$MySQLDir\bin\exec.bat"'

		
SectionEnd

; Optional section (can be disabled by the user)
Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\CahayaPitu\cERP"
  CreateShortCut "$SMPROGRAMS\CahayaPitu\cERP\Uninstall.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
  CreateShortCut "$SMPROGRAMS\CahayaPitu\cERP (MakeNSISW).lnk" "$INSTDIR\cerpfinal.nsi" "" "$INSTDIR\cerpfinal.nsi" 0
  
SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"
  
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\CahayaPitu"
  DeleteRegKey HKLM SOFTWARE\CahayaPitu

  ; Remove files and uninstaller
  Delete $INSTDIR\cerpfinal.nsi
  Delete $INSTDIR\uninstall.exe
  Delete $INSTDIR\mysql-5.5.24-win32.msi

  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\CahayaPitu\*.*"

  ; Remove directories used
  RMDir "$SMPROGRAMS\CahayaPitu"
  RMDir "$INSTDIR"

SectionEnd
