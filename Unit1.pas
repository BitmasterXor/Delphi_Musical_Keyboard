unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;
type
  TForm1 = class(TForm)
    grpCustomSound: TGroupBox;
    lblFreq: TLabel;
    lblHz: TLabel;
    lblTime: TLabel;
    lblMs: TLabel;
    edtFreq: TEdit;
    edtTime: TEdit;
    btnTest: TBitBtn;
    grpKeyboard: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure btnTestClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  public
  end;
var
  Form1: TForm1;
function WinBeep(Freq: DWORD; Duration: DWORD): Boolean; stdcall; external 'kernel32.dll' name 'Beep';
implementation
{$R *.dfm}
const
  Frequencies: array[0..13] of Word = (
    262,  // C
    277,  // C#
    294,  // D
    311,  // D#
    330,  // E
    349,  // F
    370,  // F#
    392,  // G
    415,  // G#
    440,  // A
    466,  // A#
    494,  // B
    523,  // C (higher octave)
    554   // C# (higher octave)
  );
procedure TForm1.btnTestClick(Sender: TObject);
begin
  WinBeep(StrToIntDef(edtFreq.Text, 523), strtoint(edtTime.Text));
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  WinBeep(Frequencies[0], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  WinBeep(Frequencies[1], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  WinBeep(Frequencies[2], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  WinBeep(Frequencies[3], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
  WinBeep(Frequencies[4], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button6Click(Sender: TObject);
begin
  WinBeep(Frequencies[5], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button7Click(Sender: TObject);
begin
  WinBeep(Frequencies[6], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  WinBeep(Frequencies[7], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button9Click(Sender: TObject);
begin
  WinBeep(Frequencies[8], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button10Click(Sender: TObject);
begin
  WinBeep(Frequencies[9], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button11Click(Sender: TObject);
begin
  WinBeep(Frequencies[10], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button12Click(Sender: TObject);
begin
  WinBeep(Frequencies[11], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button13Click(Sender: TObject);
begin
  WinBeep(Frequencies[12], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
procedure TForm1.Button14Click(Sender: TObject);
begin
  WinBeep(Frequencies[13], StrToIntDef(edtTime.Text, strtoint(edtfreq.Text)));
end;
end.
