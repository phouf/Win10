unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ShareContract;

type
  TForm1 = class(TForm)
    sc1: TSharingContract;
    btnExit: TButton;
    btnSdilet: TButton;
    btnKontrakt: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnKontraktClick(Sender: TObject);
    procedure btnSdiletClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.btnSdiletClick(Sender: TObject);
begin
  sc1.InitSharing;
end;

procedure TForm1.btnKontraktClick(Sender: TObject);
var
  w: String;
begin
  // Jednoduchý HTML kód
  w := '<html><table>';
  w := w + '<tr bgcolor=silver><td><b>Produkt</b></td><td><b>Edice</b></td></tr>';
  w := w + '<tr bgcolor=lightgreen><td>Delphi</td><td>Professional</td></tr>';
  w := w + '<tr bgcolor=lightgreen><td>C++Builder</td><td>Enterprise</td></tr>';
  w := w + '<tr bgcolor=lightgreen><td>RAD Studio</td><td>Architect</td></tr>';
  w := w + '</table></html>';

  // Vytvoøení datového balíèku
  // DataTitle je povinný údaj
  sc1.DataTitle := 'Delphi Shared Data';
  sc1.ApplicationName := 'Delphi - Sharing Contract Demo';
  sc1.PackageName := 'SPackage';

  // Naplnìní datového balíèku
  sc1.HTML := w;
  sc1.Description := 'Obrázek odeslaný z aplikace Delphi:';
  sc1.ImageFile := 'C:\EmbtDema\Delphi\Zdroje\SeattleTower.bmp';
  sc1.WebAddress := 'http://www.embt.cz';
end;

end.
