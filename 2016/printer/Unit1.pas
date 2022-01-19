unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Printers;

type
  TForm1 = class(TForm)

    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
   end;

var
  Form1: TForm1;
  nome:string;
implementation

{$R *.dfm}
function GetDefaultPrinterName :string; forward;

procedure TForm1.FormCreate(Sender: TObject);

begin
   GetDefaultPrinterName;
end;


function GetDefaultPrinterName :string;

begin

  if (Printer.PrinterIndex > 0)then
  begin

    Result := Printer.Printers[Printer.PrinterIndex];

  end else
  begin

    Result := '';
  end;

    if Result='' then

    Nome:='Nessuna stampante collegata'else nome:=Result;

    showmessage(Nome);
end;
end.