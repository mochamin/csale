{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit33;

interface

uses
  Classes, Windows, Graphics;


implementation

//00434D90
function winspool.ClosePrinter(hPrinter:THandle):BOOL; stdcall;
begin
{*
 00434D90    jmp        dword ptr ds:[62095C]
*}
end;

//00434D98
function winspool.DocumentPropertiesA(hWnd:HWND; hPrinter:THandle; pDeviceName:PAnsiChar; var pDevModeOutput:TDeviceModeA; var pDevModeInput:TDeviceModeA; fMode:DWORD):Longint; stdcall;
begin
{*
 00434D98    jmp        dword ptr ds:[620958]
*}
end;

//00434DA0
function winspool.EnumPrintersA(Flags:DWORD; Name:PAnsiChar; Level:DWORD; pPrinterEnum:Pointer; cbBuf:DWORD; var pcbNeeded:DWORD; var pcReturned:DWORD):BOOL; stdcall;
begin
{*
 00434DA0    jmp        dword ptr ds:[620954]
*}
end;

//00434DA8
function winspool.OpenPrinterA(pPrinterName:PAnsiChar; var phPrinter:THandle; pDefault:PPrinterDefaultsA):BOOL; stdcall;
begin
{*
 00434DA8    jmp        dword ptr ds:[620950]
*}
end;

end.