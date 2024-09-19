unit CThird;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Layouts, FMX.TabControl,System.Math,
  FMX.WebBrowser;

type
  TW = class(TForm)
    Layout2: TLayout;
    Layout1: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Rectangle1: TRectangle;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Layout3: TLayout;
    Button1: TButton;
    VertScrollBox1: TVertScrollBox;
    Image1: TImage;
    procedure FormResize(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  W: TW;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.GGlass.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.Surface.fmx MSWINDOWS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses
 CSecond, CFirst, FormWeb;

procedure AdjustLabelsWidth(Form: TForm);
var
  i: Integer;
  LabelControl: TLabel;
  FontScale: Single;
begin
  // Define um fator de escala com base na largura ou altura da tela
  FontScale := Min(Form.ClientWidth / 300, Form.ClientHeight / 600); // 800x600 � a resolu��o base

  // Percorre todos os componentes do formul�rio
  for i := 0 to Form.ComponentCount - 1 do
  begin
    if Form.Components[i] is TLabel then
    begin
      // Faz o cast para TLabel
      LabelControl := TLabel(Form.Components[i]);
      // Ajusta o tamanho da fonte
      LabelControl.Font.Size := 18 * FontScale; // Exemplo, 16 � o tamanho base da fonte
    end;
  end;
end;

procedure TW.Button1Click(Sender: TObject);
begin
  // Verifique se o formul�rio j� foi criado
  if not Assigned(Form3) then
  begin
    Form3 := TForm3.Create(Self);
  end;

  try
    // Mostra o formul�rio
    Form3.Show;
  except
    // Libera o formul�rio em caso de erro
    FreeAndNil(Form3);
    raise;  // Relan�a a exce��o para tratamento posterior
  end;
end;

procedure TW.FormResize(Sender: TObject);
begin
  AdjustLabelsWidth(Self);
  Button1.Width := 222;
end;
procedure TW.Image3Click(Sender: TObject);
begin
  if not Assigned(Second) then
    Second := TForm1.Create(Self);
  Second.Show;

    Second.VertScrollBox1.Position.Y := 0;
end;

procedure TW.Image4Click(Sender: TObject);
begin
  if not Assigned(FirstForm) then
    FirstForm := TFirstForm.Create(Self);
  FirstForm.Show;

  FirstForm.VertScrollBox1.Position.Y := 0;
end;

end.

