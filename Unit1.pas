unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1Name: TWideStringField;
    ADOTable1Capital: TWideStringField;
    ADOTable1Continent: TWideStringField;
    ADOTable1Area: TFloatField;
    ADOTable1Population: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    ADOTable1Codigo: TAutoIncField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit2Change(Sender: TObject);
begin
  ADOTable1.IndexFieldNames:='Name';
  ADOTable1.Locate('Name',Edit2.Text,[LopartialKey]);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  ADOTable1.IndexFieldNames:='Codigo';
  if not ADOTable1.Locate('Codigo',Edit1.Text,[]) then
    begin
      ShowMessage('Código não encontrado');
      Edit1.Clear;
      Edit1.SetFocus;
    end;
end;

end.
