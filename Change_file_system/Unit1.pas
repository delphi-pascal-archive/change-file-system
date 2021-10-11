unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,wfsU, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 procedure MyInfoCallBack(pInfo: TInfoCallBack);
  const
    Action: array[1..3] of String = ('Создание: %s', 'Удаление: %s', 'Изменение: %s');
  begin

    case pInfo.FAction of
      FILE_ACTION_RENAMED_NEW_NAME: Form1.Memo1.Lines.Add(Format('Переименование: %s в %s',
          [pInfo.FDrive+pInfo.FOldFileName,pInfo.FDrive+pInfo.FNewFileName]));
    else
      if pInfo.FAction<FILE_ACTION_RENAMED_OLD_NAME then
        Form1.Memo1.Lines.Add(Format(Action[pInfo.Faction], [pInfo.FDrive+pInfo.FNewFileName]));
    end;
{
   case pInfo.FAction of
FILE_NOTIFY_CHANGE_FILE_NAME:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_FILE_NAME');
FILE_NOTIFY_CHANGE_DIR_NAME:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_DIR_NAME');
FILE_NOTIFY_CHANGE_ATTRIBUTES:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_ATTRIBUTES');
FILE_NOTIFY_CHANGE_SIZE:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_SIZE');
FILE_NOTIFY_CHANGE_LAST_WRITE:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_LAST_WRITE');
FILE_NOTIFY_CHANGE_LAST_ACCESS:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_LAST_ACCESS');
FILE_NOTIFY_CHANGE_CREATION:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_CREATION');
FILE_NOTIFY_CHANGE_SECURITY:Form1.Memo1.Lines.Add('FILE_NOTIFY_CHANGE_SECURITY');
   end;}
  end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Flags:Cardinal;
begin
{
FILE_NOTIFY_CHANGE_FILE_NAME        = $00000001;//изменение имени файла
FILE_NOTIFY_CHANGE_DIR_NAME         = $00000002;//изм. имени папки
FILE_NOTIFY_CHANGE_ATTRIBUTES       = $00000004;//атрибутов файла
FILE_NOTIFY_CHANGE_SIZE             = $00000008;//размера
FILE_NOTIFY_CHANGE_LAST_WRITE       = $00000010;//последней записи
FILE_NOTIFY_CHANGE_LAST_ACCESS      = $00000020;//последнего доступа
FILE_NOTIFY_CHANGE_CREATION         = $00000040;//создания
FILE_NOTIFY_CHANGE_SECURITY         = $00000100;//прав доступа
}
Flags:=0;
if CheckBox2.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_FILE_NAME;
if CheckBox3.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_DIR_NAME;
if CheckBox4.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_ATTRIBUTES;
if CheckBox5.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_SIZE;
if CheckBox6.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_LAST_WRITE;
if CheckBox7.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_LAST_ACCESS;
if CheckBox8.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_CREATION;
if CheckBox9.Checked then Flags:=Flags or FILE_NOTIFY_CHANGE_SECURITY;

                                                                                                                                                                                                                                                                             //включая подкаталоги
StartWatch(Edit1.Text, Flags, CheckBox1.Checked, @MyInfoCallBack);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
StopWatch;
end;

end.
