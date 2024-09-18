unit CFirst;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFirstForm = class(TForm)
    Rectangle1: TRectangle;
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
    Label3: TLabel;
    Label4: TLabel;
    Layout4: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Layout5: TLayout;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstForm: TFirstForm;

implementation

{$R *.fmx}

procedure TFirstForm.FormCreate(Sender: TObject);
begin
VertScrollBox1.ScrollBy(0, 1000); // Ajuste o valor para rolar at� o final
VertScrollBox1.Position.Y := 0; // Reseta a posi��o vertical
VertScrollBox1.Height := FirstForm.ClientHeight - Rectangle1.Height; // Ajusta a altura

end;
end.


