unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms3D, FMX.Types3D, FMX.Forms, FMX.Graphics, 
  FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects;

type
  TForm2 = class(TForm3D)
    Rectangle1: TRectangle;
    Layout3: TLayout;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    VertScrollBox1: TVertScrollBox;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle3: TRectangle;
    Layout1: TLayout;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.
