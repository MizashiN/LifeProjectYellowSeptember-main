unit Welcome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, System.Math;

type
  TForm4 = class(TForm)
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Label1: TLabel;
    Button1: TButton;
    Image1: TImage;
    Label2: TLabel;
    Layout2: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Layout3: TLayout;
    VertScrollBox1: TVertScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;


implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

Uses
CFirst;

procedure AjustarFontesLabels(Form: TForm);
var
  i: Integer;
  LabelControl: TLabel;
  FontScale: Single;
begin
  // Define um fator de escala com base na largura ou altura da tela
  FontScale := Min(Form.ClientWidth / 300, Form.ClientHeight / 600);
  for i := 0 to Form.ComponentCount - 1 do
  begin
    if Form.Components[i] is TLabel then
    begin
      // Faz o cast para TLabel
      LabelControl := TLabel(Form.Components[i]);
      // Ajusta o tamanho da fonte
      LabelControl.Font.Size := 14 * FontScale; // Exemplo, 16 � o tamanho base da fonte
    end;
  end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  if not Assigned(FirstForm) then
    FirstForm := TFirstForm.Create(Self);
  FirstForm.Show;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin

 Button1.StyledSettings := []; // Desabilita o estilo padr�o
end;

procedure TForm4.FormResize(Sender: TObject);
begin
AjustarFontesLabels(Self);
end;

end.
