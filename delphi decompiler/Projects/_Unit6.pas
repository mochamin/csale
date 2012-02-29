{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit6;

interface

uses
  Classes, Windows, Graphics;

type
  tagEXCEPINFO = record //size = 32
  f4:WideString;
  f8:WideString;
  fC:WideString;;

implementation

//0041BAA4
function ole32.IsEqualGUID(var guid1:TGUID; var guid2:TGUID):Boolean; stdcall;
begin
{*
 0041BAA4    jmp        dword ptr ds:[6208D8]
*}
end;

//0041BAAC
function ole32.CoInitialize(pvReserved:Pointer):HRESULT; stdcall;
begin
{*
 0041BAAC    jmp        dword ptr ds:[6208D4]
*}
end;

//0041BAB4
procedure ole32.CoUninitialize;
begin
{*
 0041BAB4    jmp        dword ptr ds:[6208D0]
*}
end;

//0041BABC
function ole32.CoGetMalloc(dwMemContext:Longint; var malloc:IMalloc):HRESULT; stdcall;
begin
{*
 0041BABC    jmp        dword ptr ds:[6208CC]
*}
end;

//0041BAC4
function ole32.CoCreateInstance(var clsid:TGUID; unkOuter:IUnknown; dwClsContext:Longint; var iid:TGUID; var pv:void):HRESULT; stdcall;
begin
{*
 0041BAC4    jmp        dword ptr ds:[6208C8]
*}
end;

//0041BACC
procedure oleaut32.SysFreeString(bstr:PWideChar); stdcall;
begin
{*
 0041BACC    jmp        dword ptr ds:[6208E4]
*}
end;

//0041BAD4
function oleaut32.GetErrorInfo(dwReserved:Longint; var errinfo:IErrorInfo):HRESULT; stdcall;
begin
{*
 0041BAD4    jmp        dword ptr ds:[6208E0]
*}
end;

//0041BADC
//function sub_0041BADC(?:HRESULT):Boolean;
//begin
{*
 0041BADC    test       eax,80000000
 0041BAE1    sete       al
 0041BAE4    ret
*}
//end;

end.