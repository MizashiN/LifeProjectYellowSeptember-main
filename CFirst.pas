unit CFirst;

interface

uses
  System.SysUtils, System.Types, System.UITypes,System.IOUtils, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, System.Math;

type
  TFirstForm = class(TForm)
    S: TRectangle;
    Layout3: TLayout;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    VertScrollBox1: TVertScrollBox;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    Image1: TImage;
    Layout2: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle4: TRectangle;
    Layout5: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstForm: TFirstForm;

implementation

uses
CSecond, CThird;

{$R *.fmx}

procedure TFirstForm.FormCreate(Sender: TObject);
begin

Label6.Text :=    'Transtornos Mentais: Depressão, transtornos de ansiedade e transtornos bipolares.' + sLineBreak + sLineBreak +
                  'Histórico de Tentativas de Suicídio: Aumenta o risco de novas tentativas.' + sLineBreak + sLineBreak +
                  'Abuso de Substâncias: Uso excessivo de álcool e drogas.' + sLineBreak + sLineBreak +
                  'Problemas de Saúde Física: Doenças graves e crônicas.' + sLineBreak + sLineBreak +
                  'Histórico Familiar de Suicídio: Fatores genéticos e ambientais.' + sLineBreak + sLineBreak +
                  'Isolamento Social: Falta de suporte social e conexões.' + sLineBreak + sLineBreak +
                  'Traumas e Abusos: Experiências de abuso físico, emocional ou sexual.' + sLineBreak + sLineBreak +
                  'Estresse Relacionado a Vida: Problemas financeiros, desemprego e dificuldades relacionais.' + sLineBreak + sLineBreak +
                  ' de Desesperança: Percepção de falta de propósito ou solução para problemas.' + sLineBreak + sLineBreak +
                  'Acesso a Meios Letais: Disponibilidade de armas ou medicamentos em excesso.' + sLineBreak + sLineBreak +
                  '';


end;

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
      LabelControl.Font.Size := 14 * FontScale; // Exemplo, 16 é o tamanho base da fonte
    end;
  end;
end;

procedure TFirstForm.FormResize(Sender: TObject);
begin
 AjustarFontesLabels(Self);
end;

procedure TFirstForm.FormShow(Sender: TObject);
begin
if Assigned(VertScrollBox1) then
 VertScrollBox1.ViewportPosition := TPointF.Create(0, 0);
end;

procedure TFirstForm.Image2Click(Sender: TObject);
begin
  if not Assigned(W) then
    W := TW.Create(Self);
  W.Show;
end;

procedure TFirstForm.Image3Click(Sender: TObject);
begin
  // Criar e exibir o novo formulário

    if not Assigned(Second) then
    Second := TForm1.Create(Self);
  Second.Show;

  Second.VertScrollBox1.Position.Y := 0;
end;
end.


