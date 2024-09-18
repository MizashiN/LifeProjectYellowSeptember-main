unit CThird;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Layouts, FMX.TabControl;

type
  TW = class(TForm)
    Image1: TImage;
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
    procedure FormResize(Sender: TObject);
    procedure Image4Click(Sender: TObject);
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
 CSecond, CFirst;

procedure AdjustLabelsWidth(Form: TForm);
var
  i: Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  begin
    // Verifica se o componente � um TLabel
    if Form.Components[i] is TLabel then
    begin
      // Ajusta a largura do TLabel
      TLabel(Form.Components[i]).Width := Form.ClientWidth / 2;
    end;
  end;
end;

procedure TW.FormResize(Sender: TObject);
begin
  AdjustLabelsWidth(Self);
  Button1.Width := 222;
end;

procedure TW.Image4Click(Sender: TObject);
begin
  // Cria uma nova inst�ncia do formul�rio
  CSecond := CSecond.Create(Self);
  try
    // Exibe o formul�rio de maneira modal
    Form2.ShowModal;
  finally
    // Libera a mem�ria quando o formul�rio � fechado
    Form2.Free;
  end;
end;

end.

