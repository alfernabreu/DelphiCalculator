unit unt_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Layouts;

type
  Tfrm_main = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_point: TButton;
    btn_result: TButton;
    btn_plusMinus: TButton;
    btn_sum: TButton;
    btn_subtraction: TButton;
    btn_division: TButton;
    btn_multiplication: TButton;
    btn_sqrt: TButton;
    lyt_buttons: TLayout;
    Layout1: TLayout;
    txt_screen: TEdit;
    lbl_operator: TLabel;
    btn_erase: TButton;
    procedure btn_sumClick(Sender: TObject);
    procedure btn_subtractionClick(Sender: TObject);
    procedure btn_multiplicationClick(Sender: TObject);
    procedure btn_divisionClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_plusMinusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

procedure Tfrm_main.btn_0Click(Sender: TObject);
begin
 if txt_screen.Text <> '0' then
  txt_screen.Text := txt_screen.Text + '0'
 else if txt_screen.Text = '' then
  txt_screen.Text := '0';
end;

procedure Tfrm_main.btn_1Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '1'
  else txt_screen.Text := txt_screen.Text + '1';
end;

procedure Tfrm_main.btn_2Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '2'
  else txt_screen.Text := txt_screen.Text + '2';
end;

procedure Tfrm_main.btn_3Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '3'
  else txt_screen.Text := txt_screen.Text + '3';
end;

procedure Tfrm_main.btn_4Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '4'
  else txt_screen.Text := txt_screen.Text + '4';
end;

procedure Tfrm_main.btn_5Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '5'
  else
    txt_screen.Text := txt_screen.Text + '5';
end;

procedure Tfrm_main.btn_6Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '6'
  else
    txt_screen.Text := txt_screen.Text + '6';
end;

procedure Tfrm_main.btn_7Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '7'
  else
    txt_screen.Text := txt_screen.Text + '7';
end;

procedure Tfrm_main.btn_8Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '8'
  else
    txt_screen.Text := txt_screen.Text + '8';
end;

procedure Tfrm_main.btn_9Click(Sender: TObject);
begin
  if (txt_screen.Text = '') or (txt_screen.Text = '0') then
    txt_screen.Text := '9'
  else
    txt_screen.Text := txt_screen.Text + '9';
end;

procedure Tfrm_main.btn_divisionClick(Sender: TObject);
begin
  lbl_operator.Text := '÷';
  btn_sum.Enabled := True;
  btn_subtraction.Enabled := True;
  btn_division.Enabled := False;
  btn_multiplication.Enabled := True;
end;

procedure Tfrm_main.btn_multiplicationClick(Sender: TObject);
begin
  lbl_operator.Text := 'x';
  btn_sum.Enabled := True;
  btn_subtraction.Enabled := True;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := False;
end;

procedure Tfrm_main.btn_plusMinusClick(Sender: TObject);
var
toNumber : Integer;

begin
  if txt_screen.Text > '0' then
  begin
    toNumber := StrToInt(txt_screen.Text);
    toNumber := toNumber - (toNumber * 2);
    txt_screen.Text := IntToStr(toNumber)
  end
  else
  begin
    toNumber := StrToInt(txt_screen.Text);
    toNumber := (toNumber * 2) - toNumber;
    txt_screen.Text := IntToStr(toNumber)
  end;
end;

procedure Tfrm_main.btn_subtractionClick(Sender: TObject);
begin
  lbl_operator.Text := '– ';
  btn_sum.Enabled := True;
  btn_subtraction.Enabled := False;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := True;
end;

procedure Tfrm_main.btn_sumClick(Sender: TObject);
begin
  lbl_operator.Text := '+';
  btn_sum.Enabled := False;
  btn_subtraction.Enabled := True;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := True;
end;

end.
