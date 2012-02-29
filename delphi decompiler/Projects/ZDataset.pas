{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDataset;

interface

uses
  Classes, Windows, Graphics, ZAbstractRODataset, ZAbstractDataset;

type
  TZReadOnlyQuery = class(TZAbstractRODataset)
  end;
  TZQuery = class(TZAbstractDataset)
  end;

implementation

{$R *.DFM}

end.