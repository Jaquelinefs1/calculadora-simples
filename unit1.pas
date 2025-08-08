unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1:  TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2:  TButton;
    Button3:  TButton;
    Button4:  TButton;
    Button5:  TButton;
    Button6:  TButton;
    Button7:  TButton;
    Button8:  TButton;
    Button9:  TButton;
    Edit1:    TEdit;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1:     TForm1;
  priNumero: real;
  segNumero: real;
  operacao:  integer;
  flagEdit:  boolean;
  flagIgual: boolean;

implementation

{ TForm1 }

{***********************************************************************
                           Botões Operações
************************************************************************}
//Botão =
procedure TForm1.Button12Click(Sender: TObject);
begin
  if (flagIgual = True) and (flagEdit = False) then
     priNumero:= StrToFloat(Edit1.Text)
  else
    segNumero := strtofloat(Edit1.Text);

  case operacao of
    1:
    begin //multiplicação
      Edit1.Text := floattostr(priNumero * segNumero);
    end;
    2:
    begin //divisão
      Edit1.Text := floattostr(priNumero / segNumero);
    end;
    3:
    begin //adição
      Edit1.Text := floattostr(priNumero + segNumero);
    end;
    4:
    begin //subtração
      Edit1.Text := floattostr(priNumero - segNumero);
    end;
  end;
  flagIgual := True;
  flagEdit  := False;
end;

//Botão X
procedure TForm1.Button13Click(Sender: TObject);
begin
  if operacao = 0 then
    operacao := 1;

  if (priNumero = 0) and (flagEdit = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = False) then
  begin

    //priNumero  := priNumero * StrToFloat(Edit1.Text);
    //Edit1.Text := floatToStr(priNumero);
    segNumero := strtofloat(Edit1.Text);
    case operacao of
      1:
      begin //multiplicação
        Edit1.Text := floattostr(priNumero * segNumero);
      end;
      2:
      begin //divisão
        Edit1.Text := floattostr(priNumero / segNumero);
      end;
      3:
      begin //adição
        Edit1.Text := floattostr(priNumero + segNumero);
      end;
      4:
      begin //subtração
        Edit1.Text := floattostr(priNumero - segNumero);
      end;
    end;
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    //      Edit1.Text := floatToStr(priNumero);
    flagEdit  := False;
    flagIgual := False;
  end
  else
  if (flagEdit = False) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
    flagIgual := False;
  end;
  operacao := 1;
end;

//Botão :
procedure TForm1.Button14Click(Sender: TObject);
begin

  if operacao = 0 then
    operacao := 2;

  if (priNumero = 0) and (flagEdit = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = False) then
  begin
    segNumero := strtofloat(Edit1.Text);
    case operacao of
      1:
      begin //multiplicação
        Edit1.Text := floattostr(priNumero * segNumero);
      end;
      2:
      begin //divisão
        Edit1.Text := floattostr(priNumero / segNumero);
      end;
      3:
      begin //adição
        Edit1.Text := floattostr(priNumero + segNumero);
      end;
      4:
      begin //subtração
        Edit1.Text := floattostr(priNumero - segNumero);
      end;
    end;
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
    flagIgual := False;
  end
  else
  if (flagEdit = False) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
    flagIgual := False;
  end;
  operacao := 2;
end;

//Botão +
procedure TForm1.Button15Click(Sender: TObject);
begin
  if operacao = 0 then
    operacao := 3;

  if (priNumero = 0) and (flagEdit = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = False) then
  begin
    segNumero := strtofloat(Edit1.Text);
    case operacao of
      1:
      begin //multiplicação
        Edit1.Text := floattostr(priNumero * segNumero);
      end;
      2:
      begin //divisão
        Edit1.Text := floattostr(priNumero / segNumero);
      end;
      3:
      begin //adição
        Edit1.Text := floattostr(priNumero + segNumero);
      end;
      4:
      begin //subtração
        Edit1.Text := floattostr(priNumero - segNumero);
      end;
    end;
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    //      Edit1.Text := floatToStr(priNumero);
    flagEdit  := False;
    flagIgual := False;
  end
  else
  if (flagEdit = False) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
    flagIgual := False;
  end;
  operacao := 3;
end;

//Botão -
procedure TForm1.Button16Click(Sender: TObject);
begin
  if operacao = 0 then
    operacao := 4;
  if (priNumero = 0) and (flagEdit = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = False) then
  begin
    segNumero := strtofloat(Edit1.Text);
    case operacao of
      1:
      begin //multiplicação
        Edit1.Text := floattostr(priNumero * segNumero);
      end;
      2:
      begin //divisão
        Edit1.Text := floattostr(priNumero / segNumero);
      end;
      3:
      begin //adição
        Edit1.Text := floattostr(priNumero + segNumero);
      end;
      4:
      begin //subtração
        Edit1.Text := floattostr(priNumero - segNumero);
      end;
    end;
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
  end
  else
  if (flagEdit = True) and (flagIgual = True) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    //      Edit1.Text := floatToStr(priNumero);
    flagEdit  := False;
    flagIgual := False;
  end
  else
  if (flagEdit = False) then
  begin
    priNumero := StrToFloat(Edit1.Text);
    flagEdit  := False;
    flagIgual := False;
  end;
  operacao := 4;
end;

{***********************************************************************
                           Botões Funcionais
************************************************************************}
//Botão CE
procedure TForm1.Button17Click(Sender: TObject);
begin
  flagEdit   := False;
  priNumero  := 0.0;
  segNumero  := 0.0;
  operacao   := 0;
  Edit1.Text := '0';
end;

//Botão OFF
procedure TForm1.Button18Click(Sender: TObject);
begin
  Button17Click(Sender);
  Edit1.Enabled    := False;
  Button1.Enabled  := False;
  Button2.Enabled  := False;
  Button3.Enabled  := False;
  Button4.Enabled  := False;
  Button5.Enabled  := False;
  Button6.Enabled  := False;
  Button7.Enabled  := False;
  Button8.Enabled  := False;
  Button9.Enabled  := False;
  Button10.Enabled := False;
  Button11.Enabled := False;
  Button12.Enabled := False;
  Button13.Enabled := False;
  Button14.Enabled := False;
  Button15.Enabled := False;
  Button16.Enabled := False;
  Button17.Enabled := False;
  Button18.Enabled := False;
end;

//Botão ON
procedure TForm1.Button19Click(Sender: TObject);
begin
  Edit1.Enabled    := True;
  Button1.Enabled  := True;
  Button2.Enabled  := True;
  Button3.Enabled  := True;
  Button4.Enabled  := True;
  Button5.Enabled  := True;
  Button6.Enabled  := True;
  Button7.Enabled  := True;
  Button8.Enabled  := True;
  Button9.Enabled  := True;
  Button10.Enabled := True;
  Button11.Enabled := True;
  Button12.Enabled := True;
  Button13.Enabled := True;
  Button14.Enabled := True;
  Button15.Enabled := True;
  Button16.Enabled := True;
  Button17.Enabled := True;
  Button18.Enabled := True;
  Button17Click(Sender);
end;


{***********************************************************************
                           Botões Números
************************************************************************}
//Botão .
procedure TForm1.Button11Click(Sender: TObject);
var qtde,tam,i:integer;
num:string;
begin
   if(Edit1.Text<>'0')
     then begin
            qtde:=0;
            num:=Edit1.Text;
            tam:=Length(num);
            For i:= 1 to tam do
               begin
                  qtde:=qtde+1;
               end;
           if qtde=0
             then begin
                    Edit1.Text:=Edit1.Text+'.';
                   end ;
            end
     else begin
           flagEdit   := True;
          end
end;

//Botão 0
procedure TForm1.Button10Click(Sender: TObject);
begin
  if flagEdit = False then
    Edit1.Text := '0'
  else
  begin
    Edit1.Text := Edit1.Text + '0';
    flagEdit   := True;
  end;
end;

//Botão 1
procedure TForm1.Button1Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '1';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '1';
  end;
end;

//Botão 2
procedure TForm1.Button2Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '2';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '2';
  end;
end;

//Botão 3
procedure TForm1.Button3Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '3';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '3';
  end;
end;

//Botão 4
procedure TForm1.Button4Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '4';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '4';
  end;
end;

//Botão 5
procedure TForm1.Button5Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '5';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '5';
  end;

end;

//Botão 6
procedure TForm1.Button6Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '6';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '6';
  end;
end;

//Botão 7
procedure TForm1.Button7Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '7';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '7';
  end;
end;

//Botão 8
procedure TForm1.Button8Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '8';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '8';
  end;
end;

//Botão 9
procedure TForm1.Button9Click(Sender: TObject);
begin
  if flagEdit = False then
  begin
    Edit1.Text := '9';
    flagEdit   := True;
  end
  else
  begin
    Edit1.Text := Edit1.Text + '9';
  end;
end;

initialization
  {$I unit1.lrs}

end.

