unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    ConexaoBD: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQMenu: TFDQuery;
    FDQQuery: TFDQuery;
    FDQQuery1: TFDQuery;
    FDQQuery2: TFDQuery;
    FDQQuery3: TFDQuery;
    FDQMenuIDMODULO: TIntegerField;
    FDQMenuITEM: TStringField;
    FDQMenuDESCRICAO: TStringField;
    FDQMenuNIVELMENU: TStringField;
    FDQMenuICONE: TStringField;
    FDQMenuNOMEFORM: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function FB_ReturnNextCOD_ByGenerator(NomeGenerator: string): Longint;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.FB_ReturnNextCOD_ByGenerator(NomeGenerator: string): Longint;
var
  SQL: TStringList;
  Qry: TFDQuery;
label
  FIM;
begin
{$I-}

  Qry:= TFDQuery.Create(nil);
  Qry.Connection := ConexaoBD;

  SQL := TstringList.Create;
  Result := 0;

  SQL.Add('SELECT GEN_ID(' + NomeGenerator + ', 1) AS NEWID FROM RDB$DATABASE');
  Qry.Open(SQL.Text);

  Result := StrToInt(Qry.FieldValues['NEWID']);

  if Result <= 0 then
    Result := 0;

FIM:
  SQL.Free;

end;

end.
