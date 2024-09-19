unit FormWeb;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    ButtonClose: TButton;
    procedure FormShow(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.ButtonCloseClick(Sender: TObject);
begin
  WebBrowser1.Stop;
  WebBrowser1.Navigate('about:blank');
  WebBrowser1.Free;
  Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  WebBrowser1.Navigate('https://cvv.org.br/chat/');
end;

end.
