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
    Edit1: TEdit;
    Label1: TLabel;
    btn_erase: TButton;
    procedure btn_sumClick(Sender: TObject);
    procedure btn_subtractionClick(Sender: TObject);
    procedure btn_multiplicationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

procedure Tfrm_main.btn_multiplicationClick(Sender: TObject);
begin
  btn_sum.Enabled := True;
  btn_subtraction.Enabled := True;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := False;
end;

procedure Tfrm_main.btn_subtractionClick(Sender: TObject);
begin
  btn_sum.Enabled := True;
  btn_subtraction.Enabled := False;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := True;
end;

procedure Tfrm_main.btn_sumClick(Sender: TObject);
begin
  btn_sum.Enabled := False;
  btn_subtraction.Enabled := True;
  btn_division.Enabled := True;
  btn_multiplication.Enabled := True;
end;

end.
