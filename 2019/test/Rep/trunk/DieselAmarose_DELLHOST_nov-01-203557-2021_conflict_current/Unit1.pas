unit Unit1;   // Diesel2   versione 4.4.3.230
    //NB il codice � unico su file pas residente nella cartella Diesel2. Diesel 3 � stata creata per SorceForge.
interface
{$WARNINGS ON}
{$HINTS ON}
{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls,iniFiles,fileCtrl,ExtCtrls,HTMLHelpViewer,
  Data.DB, ABSMain,System.UITypes,Unit2,math,unit3,CommCtrl,shellAPI;

type
  TForm1 = class(TForm)
    PB: TProgressBar;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button4: TButton;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label11: TLabel;
    RadioButton7: TRadioButton;
    Label15: TLabel;
    Label16: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    Button6: TButton;
    Label20: TLabel;
    Label21: TLabel;
    Button1: TButton;
    Edit13: TEdit;
    Label23: TLabel;
    Button7: TButton;
    Label12: TLabel;
    ABSDatabase1: TABSDatabase;
    DataSource1: TDataSource;
    Edit14: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Edit15: TEdit;
    RadioGroup2: TRadioGroup;
    Panel2: TPanel;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    Edit16: TEdit;
    Label6: TLabel;
    Button8: TButton;
    Label7: TLabel;
    Edit17: TEdit;
    Label18: TLabel;
    Edit11: TEdit;
    Edit18: TEdit;
    Label24: TLabel;
    RadioButton3: TRadioButton;
    Button9: TButton;
    ABSTable1: TABSTable;
    Button10: TButton;
    Label25: TLabel;
    Label26: TLabel;
    ComboBox1: TComboBox;
    Label27: TLabel;
    Edit19: TEdit;
    Label28: TLabel;
    Edit20: TEdit;
    PB2: TProgressBar;
    CheckBox2: TCheckBox;
    Button5: TButton;
    Timer1: TTimer;
    procedure PBcomputing(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit6MouseEnter(Sender: TObject);
    procedure Edit6MouseLeave(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure Edit19Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
    procedure Edit11Enter(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit13Enter(Sender: TObject);
    procedure Edit17Enter(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit18Enter(Sender: TObject);
    procedure Edit15Enter(Sender: TObject);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20Enter(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
  function GetAppVersionStr: string;  { Public declarations }
  end;

var
  Form1: TForm1;
  sp,cn,rt,H,tk,atk,rtc,rng,brnd,tempo,srthrs,fuelstart,PP,cn2,alarm: double;
  pos:integer;
  dir,s1,zeroStr,riserva,dato1,dato2:string;
  myini:TiniFile;
  rb,rp,pieno: smallint;
  flag1,flag2,SPD,CNS,RTE,BRNED,TNK,TNKAC,ENGSTRT,FILLED,FBASE,ALRM,dorme: boolean;
  mydecimal:pchar;
  punto,virgola: Char;
  evento :TnotifyEvent;
  versione:string;
const
  PBM_SETBKCOLOR = 8193;            // Attenzione queste dichiarazioni
  PBM_SETBARCOLOR = (WM_USER+9);     //  sono MOLTO IMPORTANTI
implementation
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
     Application.HelpFile:='Diesel.chm';
     brnd:=0;
     tempo:=0;
     rb:=0;       //coefficiente + - =
     PP:=0;  //conterr� il valore del cumulativo all'atto del pieno
     dorme:=False;  //per leggere quando � stato cambiato il range Edit20
     SPD:=False;
     CNS:=False;
     RTE:=False;
     TNK:=False;
     TNKAC:=False;
     ALRM:=False;
     ENGSTRT:=False;
     BRNED:=False;
     FILLED:=False;
     FBASE:=False;
     flag1:=False;
     flag2:=False;
     pieno:=0;   //indice di pieno (0,1,2)
     dir:=GetCurrentDir+'\';
    // radiobutton7.Checked:=True;
     //cerca il decimale
      MyDecimal:=StrAlloc(10);
  GetLocaleInfo(LOCALE_SYSTEM_DEFAULT,LOCALE_SDECIMAL,MyDecimal,10);
  //Showmessage('System decimal is - "'+MyDecimal+'"');
  punto:='.';
  virgola:=',';
  zeroStr:='0'+mydecimal+'0';
  edit20.Text:=zerostr;
      if fileexists(dir+'diesel.ini')=True then
      begin
         MyIni := TIniFile.Create(dir+'diesel.ini') ;
       //legge il file ini e proietta i dati sulla finestra
          if ((MyIni.Readstring('settings','speed','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','speed',''))<> 0))
          then    //velocit� controlla se � null o zero
            begin
               sp:=strtofloat(MyIni.Readstring('settings','speed',''));
               SPD:=True;
            end;

         if ((MyIni.Readstring('settings','alarm','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','alarm',''))<> 0))
          then    //Livello di allarme controlla se � null o zero
            begin
               alarm:=strtofloat(MyIni.Readstring('settings','alarm',''));
               alarm:=alarm/100;
               ALRM:=True;
            end;

          if ((MyIni.Readstring('settings','consump','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','consump',''))<> 0))
          then  //consumo
            begin
               cn:=strtofloat(MyIni.Readstring('settings','consump',''));
               cn2:=cn;
               edit20.Text:=FloatToStr(cn2);
               CNS:=True;
            end;

          if ((MyIni.Readstring('settings','rate','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','rate',''))<> 0))
          then    //aliquota
            begin
               rt:=strtofloat(MyIni.Readstring('settings','rate',''));
               RTE:=True;
            end;

          if ((MyIni.Readstring('resource','tank','')<>'') AND
          (strtofloat(MyIni.Readstring('resource','tank',''))<> 0))
          then     //serbatoio
            begin
               tk:=strtofloat(MyIni.Readstring('resource','tank',''));
               TNK:=True;
            end;

          if ((MyIni.Readstring('resource','actual','')<>'') AND
          (strtofloat(MyIni.Readstring('resource','actual',''))<> 0))
          then    //attuale
            begin
               atk:=strtofloat(MyIni.Readstring('resource','actual',''));
               if atk>tk then
               showmessage('ATTENTION - unexpected error(?actual fuel?), debug through log or stop using the program');
               TNKAC:=True;
            end;

          if ((MyIni.Readstring('settings','engstart','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','engstart',''))<> 0))
          then    //ore motore iniziali
            begin
               srthrs:=strtofloat(MyIni.Readstring('settings','engstart',''));
               ENGSTRT:=True;
            end;

          if ((MyIni.Readstring('data','burned','')<>'') AND
          (strtofloat(MyIni.Readstring('data','burned',''))<> 0))
          then    //carburante consumato
            begin
               tempo:=strtofloat(MyIni.Readstring('data','burned',''));
               BRNED:=True;
            end;

          if ((MyIni.Readstring('data','CumFill','')<>'') AND
          (strtofloat(MyIni.Readstring('data','CumFill',''))<> 0))
          then    //carburante cum caricato
            begin
               edit17.text:=MyIni.Readstring('data','CumFill','');
               FILLED:=True;
            end;

            if ((MyIni.Readstring('data','PartFill','')<>'') AND
          (strtofloat(MyIni.Readstring('data','PartFill',''))<> 0))
          then    //parziale = carburante caricato dall'ultimo pieno
            begin
               edit11.text:=MyIni.Readstring('data','PartFill','');
            end else
            begin
               edit11.Text:=zerostr;
               MyIni.WriteString('data','PartFill',edit11.text);
            end;

           if ((MyIni.Readstring('settings','fuelBase','')<>'') AND
          (strtofloat(MyIni.Readstring('settings','fuelBase',''))<> 0))
          then    //carburante di partenza (serbatoio + gi� consumato)
            begin
               fuelstart:=strtofloat(MyIni.Readstring('settings','fuelBase',''));
               FBASE:=True;
            end;

           if ((MyIni.Readstring('data','LastFcons','')='') OR
          ((MyIni.Readstring('data','LastFcons',''))= '0'))
          then    //non esiste ancora indice di consumo da pieno
            myini.WriteString('data','LastFcons','NA') else
            edit18.Text:=MyIni.ReadString('data','LastFcons','');

           if ((MyIni.Readstring('data','HrsCalc','')<>'') OR //ore ultimo calcolo cons.
          ((MyIni.Readstring('data','HrsCalc',''))<> '0'))
          then    //esistono le ore relative al consumo da pieno
            label26.Caption:=('@'+MyIni.Readstring('data','HrsCalc','')+' Hrs') else
            label26.Caption:='';

           if ((MyIni.Readstring('data','pieno','')<>'') OR
          ((MyIni.Readstring('data','pieno',''))<> '0'))
          then pieno:=strToint(MyIni.Readstring('data','pieno',''));

           if (MyIni.Readstring('data','PP','')<>'')  OR
           (MyIni.Readstring('data','PP','')<>'0')
           then PP:=StrToFloat(MyIni.Readstring('data','PP',''));

           //scrive i dati sul form -- � una ripetizione
          edit9.Text:=myini.ReadString('data','range','');    //stored data
          edit10.Text:=myini.ReadString('data','filling','');  //stored data
          edit12.Text:=MyIni.ReadString('data','hours',''); //stored data
          edit13.Text:=Myini.ReadString('data','burned',''); //stored data
          edit5.Text:=Myini.ReadString('data','LastTpHrs',''); //stored data
          edit1.text:=myini.ReadString('settings','speed','');
          edit2.text:=myini.ReadString('settings','consump','');
          edit3.text:=myini.ReadString('settings','rate','');
          edit7.text:=myini.ReadString('resource','tank','');
          if checkbox2.Checked=True then
                    begin
          dato1:=myini.ReadString('resource','actual','');
          riserva:=myini.readstring('resource','reserve','');
          dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
          if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
          edit8.text:=dato2;
                    end else
          edit8.text:=myini.ReadString('resource','actual','');
          edit14.Text:=myini.ReadString('settings','engstart','');
          edit18.Text:=myini.ReadString('data','lastFcons','');
          edit19.Text:=Myini.ReadString('data','PrevTpHrs',''); //stored data
          edit17.Text:=myini.ReadString('data','CumFill','');  //stored data
          edit11.Text:=myini.ReadString('data','PartFill','');  //stored data

          if (SPD and CNS and RTE and TNK and TNKAC and ENGSTRT and BRNED and FBASE and FILLED and ALRM) = False then
          // qualche dato manca
          button1click(Sender) else  // se sono presenti tutti i dati
          begin
            PBcomputing(Sender);
            showmessage('Settings OK. Use Fuel Control');
          end;
      // inizializza il database

       ABSDatabase1.DatabaseFilename:= ExtractFilePath(Application.ExeName)+'DieselDB.ABS';
       ABSDatabase1.Open;
       ABSTable1.TableName:='EntryLog';
       ABSTable1.Open;
      end else
        begin//se non esiste l'ini si crea ed inizializza

                   //INIZIALIZZAZIONE DEL PROGRAMMA
          MyIni := TIniFile.Create(dir+'diesel.ini') ;
          myini.WriteString('data','burned',FormatFloat('###0.0',0));
          myini.WriteString('data','range',FormatFloat('###0.0',0));
          myini.WriteString('settings','alarm',FormatFloat('###0.0',0));
          myini.WriteString('data','LastTpHrs',FormatFloat('###0.0',0));
          myini.WriteString('data','PrevTpHrs',FormatFloat('###0.0',0));
          myini.WriteString('data','hours',FormatFloat('###0.0',0));
          myini.WriteString('data','PP',FormatFloat('###0.0',0));
          myini.WriteString('data','filling',FormatFloat('###0.0',0));
          myini.WriteString('data','CumFill',FormatFloat('###0.0',0));
          myini.WriteString('data','PartFill',FormatFloat('###0.0',0));
          myini.WriteString('data','HrsCalc',FormatFloat('###0.0',0));
          myini.WriteString('settings','speed',FormatFloat('###0.0',0));
          myini.WriteString('settings','consump',FormatFloat('###0.0',0));
          myini.WriteString('settings','rate',FormatFloat('#0',0));
          myini.WriteString('settings','engstart',FormatFloat('###0.0',0));
          myini.WriteString('settings','fuelBase',FormatFloat('###0.0',0));
          myini.WriteString('resource','tank',FormatFloat('###0.0',0));
          myini.WriteString('resource','actual',FormatFloat('###0.0',0));
          myini.WriteString('resource','reserve',FormatFloat('###0.0',0));
          myini.WriteString('data','LastFcons','NA');
          edit1.Text:='0';
          edit2.Text:='0';
          edit3.Text:='0';
          edit4.Text:='0';
          edit5.Text:='0';
          edit6.Text:='0';
          edit7.Text:='0';
          edit8.Text:='0';
          edit9.Text:='0';
          edit10.Text:='0';
          edit11.Text:='0';
          edit12.Text:='0';
          edit13.Text:='0';
          edit14.Text:='0';
          edit15.Text:='0';
          edit16.Text:='0';
          edit17.Text:='0';
          edit18.Text:='0';
          edit19.Text:='0';
          label26.Caption:='';
          //Form1.Show;
          if Dialogs.MessageDlg('Welcome ! - new settings file, continue ?',
          mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
          Application.Terminate;
          showmessage('Please entry settings data, press ENTER at each entry to continue');
          //occorre aprire il database anche in creazione dell'ini
          ABSDatabase1.DatabaseFilename:= ExtractFilePath(Application.ExeName)+'DieselDB.ABS';
          ABSDatabase1.Open;
          ABSTable1.TableName:='EntryLog';
          ABSTable1.Open;
          button9click(Sender);
          button1click(Sender);
        end;
        GetAppVersionStr;
        caption:=caption + ' ver: '+versione;
end;

function TForm1.GetAppVersionStr: string;
var
Exe: string;
Size, Handle: DWORD;
Buffer: TBytes;
FixedPtr: PVSFixedFileInfo;
begin
Exe := ParamStr(0);
Size := GetFileVersionInfoSize(PChar(Exe), Handle);
if Size = 0 then
RaiseLastOSError;
SetLength(Buffer, Size);
if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
RaiseLastOSError;
if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
RaiseLastOSError;
Result := Format('%d.%d.%d.%d',
[LongRec(FixedPtr.dwFileVersionMS).Hi, //major
LongRec(FixedPtr.dwFileVersionMS).Lo, //minor
LongRec(FixedPtr.dwFileVersionLS).Hi, //release
LongRec(FixedPtr.dwFileVersionLS).Lo]); //build
versione:= Result;
end;

//SET del serb.attuale
procedure TForm1.Edit8Enter(Sender: TObject);
begin
        showmessage('Cannot enter data here. Use "ADD FUEL" entry');
        exit;
end;

procedure TForm1.Edit9Enter(Sender: TObject);
begin
         showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Button1Click(Sender: TObject);   //Verifica e caricamento funzioni primarie

begin
        Form1.show;
//Controlla i dati di setting
        if SPD=False then
        begin
        showmessage('Please enter estimated Standard Cruising Speed');
        edit1.SetFocus;
        edit1.Color:=clLime;
        exit;
        end;

        if CNS=False then
        begin
        showmessage('Please enter estimated Standard Fuel Consumption');
        edit2.SetFocus;
        edit2.Color:=clLime;
        exit;
        end;

        if RTE=False then
        begin
        showmessage('Please enter variation rate');
        edit3.SetFocus;
        edit3.Color:=clLime;
        exit;
        end;

        if TNK=False then
        begin
        showmessage('Please enter Maximum Tank Capacity');
        edit7.SetFocus;
        edit7.Color:=clLime;
        exit;
        end;

        if ENGSTRT=False then
        begin
        showmessage('Please Set Engine hours START data');
        edit14.SetFocus;
        edit14.Color:=clLime;
        exit;
        end;

        if TNKAC=False then
        begin
        showmessage('Please Set estimated Actual Tank - Use Add Fuel entry box');
        edit4.Color:=clLime;
        edit4.SetFocus;
        end;

        if FILLED=False then
        begin
        edit17.Text:= edit8.text ; //dato che inizialmente � identico all'actual
        FILLED:=True;
        myini.WriteString('data','CumFill',edit17.Text);
        end;

        if BRNED=False then
        begin
        myini.WriteString('data','burned',floattostr(0)); //azzera il dato burned ovunque
        BRNED:=True;
        edit13.Text:=floattostr(0);
        end;

        if FBASE=False then
        begin
        myini.WriteString('settings','fuelBase',floattostr(strtofloat(edit8.text)));
        FBASE:=True;
        end;

        if (ALRM=False) and (TNKAC=True) then
        Form3.Show;

        if (SPD and CNS and RTE and TNK and TNKAC and ENGSTRT and BRNED and FBASE and FILLED and ALRM) = True then
        begin
        showmessage(' Checkup completed : OK ');
        PBComputing(Sender);
        end else
         exit;
end;

procedure TForm1.Edit10Enter(Sender: TObject);
begin
         showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit11Enter(Sender: TObject);
begin
         showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit12Enter(Sender: TObject);
begin
       showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit13Enter(Sender: TObject);
begin
        showmessage('Cannot enter data here.');
         exit;
end;
           //Inserimento dati nel CONTAORE INIZIALE
procedure TForm1.Edit14KeyPress(Sender: TObject; var Key: Char); //IN contaore iniziale
begin
 //controllo format
    if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
 //Fcontrollo format
    if key=#13 then    //inserimento ORE MOTORE INIZIALI
  begin
       edit14.Color:=clCream;
       if TryStrToFloat(edit14.Text,srthrs)=False then  //controllo del float
         begin
         ShowMessage('Please check your input format details!');
         exit;
         end;
   if Dialogs.MessageDlg('WARNING - Diesel control will base on these data, NO to modify or cancel. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
        begin
      myini.WriteString('settings','engstart',edit14.Text);
      ENGSTRT:=True;
      SendMessage(edit3.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
      self.ActiveControl:=nil;
      Button1click(Sender); //Save when done           //rivedere da questo punto
        end else
        begin
        edit14.Text:='';
        edit14.SetFocus;
        edit14.Color:=clLime;
        exit;
        end;

   Edit12.Text:=Edit14.Text;       //Contaore all'inizializzazione
   myini.WriteString('data','hours',edit12.text);
        if edit8.Text=edit7.text then   //se all'inizio � pieno
        begin
          edit19.Text:=edit12.Text;
          myini.WriteString('data','PrevTpHrs',edit12.text);
        end;

  // SendMessage(edit14.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
  // self.ActiveControl:=nil;

      // carica il DB log
    with ABSTable1 do
          begin
         Insert;
    FieldByName('speed').AsString:=myini.ReadString('settings','speed','');
    FieldByName('cons').AsString:=myini.ReadString('settings','consump','');
    FieldByName('Rate').AsString:=myini.ReadString('settings','rate','');
    FieldByName('MaxTnk').AsString:=myini.ReadString('resource','tank','');
    FieldByName('Actual').AsString:=myini.ReadString('resource','Actual','');
    FieldByName('AddFuel').AsString:=myini.ReadString('data','filling','');
    FieldByName('AddHrs').AsString:=myini.ReadString('data','hours','');
    FieldByName('CumFuel').AsString:=myini.ReadString('data','CumFill','');
    FieldByName('PartFuel').AsString:=myini.ReadString('data','PartFill','');
    FieldByName('LFcons').AsString:=myini.ReadString('data','LastFcons','');
    FieldByName('LastFill').AsString:=edit10.Text;
    FieldByName('LastHrs').AsString:=edit12.text;
    FieldByName('PrevFHrs').AsString:=myini.ReadString('data','LastTPHrs','');
    FieldByName('HrsCalc').AsString:=myIni.ReadString('data','HrsCalc','');
    FieldByName('LtrTUp').AsString:=edit11.text;
         Post;
          end;

  end;

end;

procedure TForm1.Edit15Enter(Sender: TObject);
begin
      showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit16KeyPress(Sender: TObject; var Key: Char);//consumo f(RPM)
   var
fcalc :double;
flo16:double;
begin
      if (edit16.Text='') or (StrToFloat(edit16.Text)=0) then
            begin
         edit15.Text:= 'NA';
            end;
      if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
      if key=#13 then
      begin                     //verifica se combobox1 seleziona il motore
      if (strtofloat(edit16.Text)>0) AND (combobox1.ItemIndex = -1)= True then
            begin
         showmessage('Please, Select engine type');
         Edit16.Text:='';
         exit;
            end else            //calcolo del consumo con la funzione specifica
                           begin
      flo16:=strtofloat(edit16.Text)/1000;  //Volvo D2-55 custom
      if combobox1.ItemIndex =0 then
                              begin
      fcalc := 1.33*flo16+0.505;
      edit15.text :=   FormatFloat('#.##',fcalc);
                              end;
      if combobox1.ItemIndex =1 then  //YANMAR 4JH5E
                              begin
      fcalc :=-0.044*intpower(flo16,3)+2.4*intpower(flo16,2)-5*flo16+4;
      edit15.Text:= FormatFloat('#.##',fcalc);
                              end;
      if combobox1.ItemIndex =2 then    //Volvo D2-55 teorica
                              begin
      fcalc :=0.252*intpower(flo16,3)+1.179*flo16-0.419;
      edit15.Text:= FormatFloat('#.##',fcalc);
                              end;
       if combobox1.ItemIndex =3 then  //4JH4AE Yanmar
                              begin
      fcalc :=2*intpower(flo16,3)-10.184*intpower(flo16,2)+21.376*flo16-14.292;
      edit15.Text:= FormatFloat('#.##',fcalc);
                              end;
                           end;
      Radiobutton3.Checked:=True;
      end;
end;

procedure TForm1.Edit17Enter(Sender: TObject);
begin
        showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit18Enter(Sender: TObject);
begin
           showmessage('Cannot enter data here.');
         exit;
end;

procedure TForm1.Edit19Enter(Sender: TObject);
begin
          showmessage('Cannot enter data here.');
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;

  if key=#13 then    //inserimento velocit� std
    begin
       edit1.Color:=clCream;
       if TryStrToFloat(edit1.Text,sp)=False then  //controllo del float
         begin
         ShowMessage('Please check your input format details!');
         exit;
         end;

   myini.WriteString('settings','speed',edit1.Text);
   sp:=strtofloat(edit1.Text); //crea la variabile
   SPD:=True;
   SendMessage(edit1.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
   button1click(Sender);
    end;

end;

procedure TForm1.Edit20Enter(Sender: TObject);
begin
    Edit20.Text:='';
    edit20.Color:=clLime;
    edit20.SetFocus;
end;

procedure TForm1.Edit20KeyPress(Sender: TObject; var Key: Char);   //Cambia Range
var
t:string;
begin
     if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
   if key=#13 then
   begin
   cn2:=strToFloat(edit20.Text);
   if cn2=0 then
   begin
        cn2:=cn;
        edit20.Text:=FloatToStr(cn2);
   end;
   if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        atk:= (strToFloat(dato1)-strToFloat(riserva));
        if atk<=0 then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        t:=  FormatFloat('###0',atk*sp/cn2);
        end else
   t:=  FormatFloat('###0',atk*sp/cn2);
   edit9.Text:=t;
   SendMessage(edit1.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
   end;
   if edit20.Text<>edit2.text then
   edit20.color:=clRed else
   edit20.Color:=clCream;
   dorme:=True;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
   if key=#13 then  //inserimento consumo std
     begin
      edit2.Color:=clCream;
      if TryStrToFloat(edit2.Text,cn)=False then
        begin
        ShowMessage('Please check your input format details!');
        exit;
        end else
        edit20.Text:=edit2.Text;

   myini.WriteString('settings','consump',edit2.Text);
   cn:=strtofloat(edit2.Text); //crea la costante del consumo
   CNS:=True;
   SendMessage(edit2.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
   button1click(Sender);
    end;

end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
   if key=#13 then    //inserimento aliquota di variazione std
     begin
      edit3.Color:=clCream;
      if TryStrToFloat(edit3.Text,rt)=False then
        begin
        ShowMessage('Please check your input format details!');
        exit;
        end;

   myini.WriteString('settings','rate',edit3.Text);
   rt:=strtofloat(edit3.Text); //crea la variabile
   RTE:=True;
   SendMessage(edit3.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
   button1click(Sender);
    end;

end;

// Inserimento litri del serbatoio al pieno
procedure TForm1.Edit7Enter(Sender: TObject);
begin
if (myini.ReadString('resource','tank','')<>'') and (myini.ReadString('resource','tank','')<>zeroStr)
then showmessage('ATTENTION you are modifying a critical data');
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
  if key=#13 then
    begin
      edit7.Color:=clCream;
      if TryStrToFloat(edit7.Text,tk)=False then
        begin
        ShowMessage('Please check your input format details!');
        exit;
        end;

   if Flag2 = true then // attivato il change settings
      if Dialogs.MessageDlg('Do you want, ALSO, to reset Cumul.filled/TopUp fuel ?',
      mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
                              Flag2:=False else
                  begin
        myini.WriteString('data','CumFill',floattostr(0)); //azzera il dato stored
        myini.WriteString('data','PartFill',floattostr(0));
        edit17.Text:='0';
        edit11.Text:='0';
        Flag2:=False;
                  end;

   myini.WriteString('resource','tank',edit7.Text);
   tk:=strtofloat(edit7.Text); //crea la variabile
   TNK:=True;
   SendMessage(edit7.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
   button1click(Sender);
    end;

end;



//carico o scarico gasolio
procedure TForm1.Button2Click(Sender: TObject);
  begin
   if atk=tk then
            begin
        showmessage('Cannot fill any fuel. Tank is TopUp');
        evento:=CheckBox1.OnClick;           // disattivo onClick
        Checkbox1.onClick:=nil;              // cambio checkbox1 e
        checkbox1.Checked:=False;  // riattivo l'evento
        Checkbox1.OnClick:=evento;
        exit;
            end;
   if Dialogs.MessageDlg('Do you have to enter latest Engine Hours first ?', //Controlla se le ore sono gi� date
       mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
          begin
          evento:=CheckBox1.OnClick;           // disattivo onClick
          Checkbox1.onClick:=nil;              // cambio checkbox1 e
          if checkbox1.checked=True then       // riattivo l'evento
          checkbox1.Checked:=False;
          Checkbox1.OnClick:=evento;
          exit;
          end;
   if Dialogs.MessageDlg('Enter total liters supplied ("-" to subtract), NO to exit',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
              begin
             evento:=CheckBox1.OnClick;           // disattivo onClick
             Checkbox1.onClick:=nil;              // cambio checkbox1 e
             if checkbox1.checked=True then    // riattivo l'evento
             checkbox1.Checked:=False;
             Checkbox1.OnClick:=evento;
             exit;
              end else
         begin
     edit4.Text:='';
     edit4.SetFocus;
     edit4.Color:=clLime;
          end;
  end;

  // lancia dbgrid per visionare il log
procedure TForm1.Button3Click(Sender: TObject);
begin
//view log  ????
form2.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin                 //  entra le ore di motore
    if flag1=True then
      if Dialogs.MessageDlg('Recently you already used this function, continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
      exit;
       if Dialogs.MessageDlg('You are going to enter actual engine hours, continue ?',
       mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
       exit;
       edit6.SetFocus;
       edit6.Color:=clLime;
       edit12.Color:=clyellow;
       exit;

end;

procedure TForm1.Button5Click(Sender: TObject);   // read INI
begin
       ShellExecute(Handle,'open', 'c:\windows\notepad.exe','diesel.ini', nil, SW_SHOWNORMAL) ;
end;

procedure TForm1.PBcomputing(Sender: TObject); // calcolo della ProgressBar
begin
     if dorme=True then
     begin
       edit20.Text:=edit2.Text;
       edit20.Color:=clCream;
       cn2:=cn;
       dorme:=False;
     end;
    RadioButton5.Checked:=False;  //resetta i fattori di correzione
    RadioButton6.Checked:=False;
    atk:=strtofloat(MyIni.Readstring('resource','actual',''));
    if tk<>0 then
    pos:=round(100*atk/tk);
    if atk<=tk*alarm then
     begin
    SendMessage(PB.Handle, PBM_SETBKCOLOR, 0, clyellow);//colore background
    SendMessage(PB.handle, PBM_SETBARCOLOR, 0,clRed) ; //colore di foreground
    Label10.Caption:='Alarm';
     end else
      if atk<=tk*0.20 then
     begin
    SendMessage(PB.Handle, PBM_SETBKCOLOR, 0, clyellow);
    SendMessage(PB.handle, PBM_SETBARCOLOR, 0,clGreen) ;
    Label10.Caption:='Caution';
     end else
      begin
        SendMessage(PB.Handle, PBM_SETBKCOLOR, 0, clCream);
        SendMessage(PB.handle, PBM_SETBARCOLOR, 0,clGreen) ;
        Label10.Caption:='Safe';
      end;

    PB.position :=pos;
    if cn<>0 then
    rng:=atk*sp/cn;    //scrive il range
    myini.WriteString('data','range',formatfloat('#',rng));
    if (checkbox2.Checked=True) and (cn>0) then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        atk:= (strToFloat(dato1)-strToFloat(riserva));
        if atk<=0 then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null, continue?. Answer NO (Recommended)',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit9.text:=  FormatFloat('###0',atk*sp/cn);
        end else
    edit9.Text:=myini.ReadString('data','range','');  //stored data
    edit20.Text:=FloatToStr(cn);
    // PB2.Brush.Color:=clBlack;  //background
    SendMessage(PB2.Handle, PBM_SETBARCOLOR, 0, clRed); //barra
    PB2.Position:=round(100*alarm);
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
if (edit18.Text ='') or (strtofloat(edit18.Text)=0) or (edit18.Text='NA') then
         begin
           showmessage('No consumption data available. Change method');
           radioButton1.Checked:=True;
           exit;
         end;
end;

 procedure TForm1.RadioButton3Click(Sender: TObject);
begin
      if (edit16.Text='') or (StrToFloat(edit16.Text)=0) then
            begin
      showmessage('Attention - Error : no Entry RPM available.');
      RadioButton1.Checked:=True;
            exit;
            end;
end;

//inserimento coefficiente peggiorativo
procedure TForm1.RadioButton5Click(Sender: TObject);
begin
   rb:=1;
end;
 //inserimento coefficiente migliorativo
procedure TForm1.RadioButton6Click(Sender: TObject);
begin
   rb:=2;
end;
  //valutazione a standard
procedure TForm1.RadioButton7Click(Sender: TObject);
begin
     rb:=0;
end;
procedure TForm1.Timer1Timer(Sender: TObject);     //Blinking
begin
 if (checkbox2.Checked=True) and (checkbox2.Color=clRed) then
 checkbox2.Color:= clskyblue else
 if checkbox2.Checked=True then Checkbox2.Color:=clRed;
end;

//C A R B U R A N T E
procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
var
agg: double;
cns,tmp: double;
Begin  //rifornimento carburante

 //controllo format
   if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
 //Fcontrollo format
 //acquisizione precedente
   pieno:=strToInt(myIni.ReadString('data','pieno',''));
   atk:=strtofloat(MyIni.Readstring('resource','actual','')); //attuale precedente
   if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
         if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;

        edit8.text:=dato2;
        end else
        edit8.Text:=myini.ReadString('resource','actual','');
   edit11.Text:=myini.ReadString('data','PartFill','');
   Edit19.Text:=myIni.ReadString('data','PrevTpHrs','');
   Edit17.Text:=myini.ReadString('data','CumFill','');
   Edit5.Text:=myini.ReadString('data','LastTpHrs','');
   edit10.Text:=myini.ReadString('data','filling','');  //stored data
 //Facquisizione precedente
    if key=#13 then       //ENTRY GASOLIO
  begin
        edit4.Color:=clYellow;

        if atk=tk then
        begin
        showmessage('Cannot fill any fuel. Tank is TopUp');
        exit;
        end;
                      //pone l'entry in "agg"
        if TryStrToFloat(edit4.Text,agg)=False then //Att. si mette il nuovo carico in AGG se True
        begin
        ShowMessage('Please check your input format details!');
        exit;
        end;
//Processo DELL'ACQUISITO

      atk:=atk+agg;  // aggiorna all'ultimo entry  ma deve aspettare la conferma per registrarlo
      TNKAC:=True;
      tmp:=StrToFloat(Edit17.Text)+agg;  //calcola il nuovo cumulativo ma aspetta la conferma per registrarlo

  if Atk>=tk then
  begin
       if Dialogs.MessageDlg('ATTENTION-Possible TopUp or numerical overflow !.Do you confirm your entry ?',
       mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
       begin  //nega l'input
                     atk:=atk-agg;
                     agg:=0;
                     evento:=CheckBox1.OnClick;
                     Checkbox1.onClick:=nil;
                     checkbox1.Checked:=False;
                     Checkbox1.OnClick:=evento;
                     edit4.SetFocus;
                     edit4.Color:=clLime;
                     edit4.Text:='';
                     exit;
       end else  //conferma l'input anche di un overflow teorico
       begin
        evento:=CheckBox1.OnClick;           // disattivo onClick
        Checkbox1.onClick:=nil;              // cambio checkbox1 e
        checkbox1.Checked:=True;            // riattivo l'evento
        Checkbox1.OnClick:=evento;
        showMessage('Tank TopUp - Actual set to Max Capacity - Cumulative to real ');
        myIni.WriteString('resource','actual',Edit7.Text);
            if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
          if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit8.text:=dato2;
        end else
        edit8.Text:=myini.ReadString('resource','actual','');
        Edit10.Text:=Edit4.Text;   //aggiorna ultimo carico di fuel sul form
        Myini.WriteString('data','filling',edit10.text);  //aggiorna ultimo carico sull'INI
        Edit17.Text:=floattoStr(tmp);      //aggiorna il cumulativo sul form
        MyIni.WriteString('data','CumFill',edit17.text); //aggiorna il cumulativo sull'INI
        pieno:=pieno+1;
        myini.WriteString('data','pieno',inttostr(pieno));
       end;

  end;

  if (atk<tk) AND (checkbox1.Checked = False) then   //non si tratta di un pieno
  begin
        myIni.WriteString('resource','actual',FloatToStr(atk));
                 if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
                if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit8.text:=dato2;
        end else
        edit8.Text:=myini.ReadString('resource','actual','');
        Edit10.Text:=Edit4.Text;   //aggiorna ultimo carico di fuel sul form
        Myini.WriteString('data','filling',edit10.text);  //aggiorna ultimo carico sull'INI
        Edit17.Text:=floattoStr(tmp);      //aggiorna il cumulativo sul form
        MyIni.WriteString('data','CumFill',edit17.text); //aggiorna il cumulativo sull'INI
  end;

  if (atk<tk) AND  (checkbox1.Checked = True) then   // si tratta di pieno
         if Dialogs.MessageDlg('Do you confirm FULL TANK filled up ?',
       mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
         begin       // CONFERMA L'INPUT
          //atk:=tk ;
        myIni.WriteString('resource','actual',Edit7.Text);
          if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
                if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit8.text:=dato2;
        end else
          Edit8.Text:=Edit7.Text;
          Edit10.Text:=Edit4.Text;   //aggiorna ultimo carico di fuel sul form
          Myini.WriteString('data','filling',edit10.text);  //aggiorna ultimo carico sull'INI
          Edit17.Text:=floattoStr(tmp);      //aggiorna il cumulativo sul form
          MyIni.WriteString('data','CumFill',edit17.text); //aggiorna il cumulativo sull'INI
          pieno:=pieno+1;
          myini.WriteString('data','pieno',inttostr(pieno));
         end else    // NON CONFERMA L'INPUT
         begin
               atk:=atk-agg;
               agg:=0;
               evento:=CheckBox1.OnClick;
               Checkbox1.onClick:=nil;
               checkbox1.Checked:=False;
               Checkbox1.OnClick:=evento;
               edit4.SetFocus;
               edit4.Color:=clLime;
               edit4.Text:='';
               exit;
         end;

     if pieno>=2 then
          begin
         pieno:=2 ;
         myini.WriteString('data','pieno',inttostr(pieno));
          end;
            if (PP=0) AND (pieno=1) then         //valore del cumulativo all'atto del pieno;
            begin
      PP:=strToFloat(Edit17.text);
      Myini.WriteString('data','PP',Edit17.text);
            end;
               if (PP>0) AND (PP < strToFloat(Edit17.Text)) AND (pieno>=1) then
               begin
              edit11.Text:=FloatToStr(strToFloat(edit11.Text)+agg);
              myini.WriteString('data','PartFill',edit11.text);
               end;
       if pieno>=2 then           //PIENO = 2
         begin
         pieno:=2 ;
         myini.WriteString('data','pieno',inttostr(pieno));
         Edit5.Text:=Edit12.Text;
         myIni.WriteString('data','PrevTpHrs',edit19.text); // ore precedenti
         myIni.WriteString('data','LastTpHrs',Edit5.text);  //ultime ore
         end;

         if pieno=1 then
         begin
         Edit19.Text:=Edit12.Text;       //ore
         Edit5.Text:='';
         myIni.WriteString('data','PrevTpHrs',edit19.text);    //ore del pieno
         myIni.WriteString('data','LastTpHrs',Edit5.text);
         end;



                 //calcola il nuovo CONSUMO DA DIFFERENZA TRA PIENI
                       //inverte i dati per il prossimo pieno sull'INI
     if (pieno=2) and (checkbox1.Checked=True) then
     begin            // lascia i dati correnti sul form
      cns:= strtofloat(edit11.Text)/(strtofloat(edit5.text)-strtofloat(edit19.Text) );
      edit18.Text:=formatfloat('0.#0',cns); //consumo
      evento:=CheckBox1.OnClick;
      Checkbox1.onClick:=nil;
      checkbox1.Checked:=False;
      Checkbox1.OnClick:=evento;
      pieno := 1; //riporta il pieno ad 1
      myini.WriteString('data','pieno',intTostr(pieno));
      s1:=myini.ReadString('data','hours','');
      myini.WriteString('data','hrsCalc',s1); //registra le ore di calcolo del consumo
      myIni.WriteString('data','PrevTpHrs',s1);
      myIni.WriteString('data','LastTpHrs',zerostr);
      myini.WriteString('data','LastFcons',edit18.Text);
      label26.Caption:=('@'+s1+' Hrs');
      myini.WriteString('data','PartFill',zerostr);
     end;

   //registra range e filling
   rng:=atk*sp/cn;
   myini.WriteString('data','range',formatfloat('#',rng));
   if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        atk:= (strToFloat(dato1)-strToFloat(riserva));
                if atk<=0 then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit9.text:=  FormatFloat('###0',atk*sp/cn2);
        edit20.Text:=FloatToStr(cn2);
        end else
    edit9.Text:=myini.ReadString('data','range','');  //stored data
    edit20.Text:=FloatToStr(cn);
   edit4.Text:='';
   SendMessage(edit4.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;

   if  ALRM = False then
          // qualche dato manca
          button1click(Sender) else  // se sono presenti tutti i dati
          begin
            PBcomputing(Sender);
          end;

    PBComputing(Sender);

     with ABSTable1 do
     begin
         Insert;
    FieldByName('speed').AsString:=myini.ReadString('settings','speed','');
    FieldByName('cons').AsString:=myini.ReadString('settings','consump','');
    FieldByName('Rate').AsString:=myini.ReadString('settings','rate','');
    FieldByName('MaxTnk').AsString:=myini.ReadString('resource','tank','');
    FieldByName('Actual').AsString:=myini.ReadString('resource','Actual','');
    FieldByName('AddFuel').AsString:=myini.ReadString('data','filling','');
    FieldByName('AddHrs').AsString:=myini.ReadString('data','hours','');
    FieldByName('CumFuel').AsString:=myini.ReadString('data','CumFill','');
    FieldByName('PartFuel').AsString:=myini.ReadString('data','PartFill','');
    FieldByName('LFcons').AsString:=myini.ReadString('data','LastFcons','');
    FieldByName('LastFill').AsString:=edit10.Text;
    FieldByName('LastHrs').AsString:=edit12.text;
    FieldByName('PrevFHrs').AsString:=myini.ReadString('data','PrevTPHrs','');
    FieldByName('HrsCalc').AsString:=myIni.ReadString('data','HrsCalc','');
    FieldByName('LtrTUp').AsString:=edit11.text;
         Post;
     end;

                     evento:=CheckBox1.OnClick;
                     Checkbox1.onClick:=nil;
                     checkbox1.Checked:=False;
                     Checkbox1.OnClick:=evento;

  end;
End;

procedure TForm1.Edit5Enter(Sender: TObject);
begin
         showmessage('Cannot enter data here.');
         exit;
end;

// sp velocit�
// rb coefficiente 1 2 0  :  + - =
//rt variazione
//rtc variazione calcolata
//cn consumo in l/H
//brnd gasolio consumato
//flag1 anti doppio inserimento
//atk actual tank


     // inserisce le ore motore fatte
procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
var
HrsPrecedente:string;
begin
   if (Key = '.') OR (key =',') then    //controllo del tasto decimale
        if punto = mydecimal then
        key:= punto else key := virgola ;
   if key=#13 then  //inserimento ore di motore
    begin
    edit6.Color:=clYellow;
    edit12.Color:=clCream;
    flag1:=True;  //anti doppio inserimento
    if strtofloat(MyIni.Readstring('data','hours',''))<> 0
    then Edit12.text := MyIni.Readstring('data','hours','') else //se non c'� un valore
    Edit12.Text := edit14.Text;//caso prima tappa = dato di partenza ore motore
    HrsPrecedente:=Edit12.Text;
    if strtofloat(edit12.text)>= strtofloat(Edit6.text) then
        begin
        showmessage('ATTENTION Invalid value ! redo');
        edit6.Text:='';
        SendMessage(edit6.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
        self.ActiveControl:=nil;
        exit;
        end;
   myini.WriteString('data','hours',edit6.Text);
   edit12.Text:=MyIni.ReadString('data','hours',''); //stored data
   SendMessage(edit6.Handle, WM_KILLFOCUS,0,0); //toglie il prompt
   self.ActiveControl:=nil;
                              //CALCOLO DEL CONSUMO
    //calcolo del nuovo atk  :serbatoio attuale
    if radiobutton2.Checked=True then    //consumo calcolato dal pieno
    cn:= strtofloat(edit18.Text);
    if RadioButton3.Checked=True then    //consumo calcolato dai giri
    cn:= strtofloat(edit15.Text);

    H:= strtofloat(edit6.text)-strtofloat(HrsPrecedente); //differenza tra ore motore
    if rb=1 then    //peggiorativo
        begin
      rtc:=(rt/100)+1;   // moltiplicatore dell'indice percentuale scelto
      brnd:= H*cn*rtc;
      atk:=atk-brnd;
        end else       //migliorativo
    if rb=2 then
        begin
      rtc:=(rt/100)+1;
      brnd:= (H*cn)/rtc;
      atk:=atk- brnd;
        end else
        begin
    brnd:= H*cn;
    atk:=atk - brnd;
        end;
     // Scrive il dato del carburante rimasto
    myini.WriteString('resource','actual', formatfloat('#.#',atk));
        if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
        edit8.text:=dato2;
        end else
    edit8.Text:=formatfloat('#.#',atk);
    PBcomputing(sender);
    edit6.text:='';
    rng:=atk*sp/cn;
    tempo:=strtofloat(myini.ReadString('data','burned','')); //stored used diesel
    tempo:=tempo+brnd;
    myini.WriteString('data','burned',formatFloat('#.#',tempo));//scrive il nuovo burned
    myini.WriteString('data','range',formatfloat('#',rng));
    edit13.Text:= myini.ReadString('data','burned','');//scrive il nuovo burned sul form
    if checkbox2.Checked=True then
        begin
        dato1:=myini.ReadString('resource','actual','');
        riserva:=myini.readstring('resource','reserve','');
        atk:= (strToFloat(dato1)-strToFloat(riserva));
                if atk<=0 then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;
        edit9.text:=  FormatFloat('###0',atk*sp/cn2);
        edit20.Text:=FloatToStr(cn2);
        end else
    edit9.Text:=myini.ReadString('data','range','');  //stored data
    edit20.Text:=FloatToStr(cn);
    brnd:=0;
    tempo:=0;
    edit16.Text:='';
    radiobutton7.Checked:=True;
    radioButton1.Checked:=True;

            with ABSTable1 do    //registra il LOG
          begin
         Insert;
    FieldByName('speed').AsString:=myini.ReadString('settings','speed','');
    FieldByName('cons').AsString:=myini.ReadString('settings','consump','');
    FieldByName('Rate').AsString:=myini.ReadString('settings','rate','');
    FieldByName('MaxTnk').AsString:=myini.ReadString('resource','tank','');
    FieldByName('Actual').AsString:=myini.ReadString('resource','Actual','');
    FieldByName('AddFuel').AsString:=myini.ReadString('data','filling','');
    FieldByName('AddHrs').AsString:=myini.ReadString('data','hours','');
    FieldByName('CumFuel').AsString:=myini.ReadString('data','CumFill','');
    FieldByName('PartFuel').AsString:=myini.ReadString('data','PartFill','');
    FieldByName('LFcons').AsString:=myini.ReadString('data','LastFcons','');
    FieldByName('LastFill').AsString:=edit10.Text;
    FieldByName('LastHrs').AsString:=edit12.text;
    FieldByName('PrevFHrs').AsString:=myini.ReadString('data','PrevTPHrs','');
    FieldByName('LtrTUp').AsString:=edit11.text;
         Post;
          end;

    end;

end;

 procedure TForm1.Edit6MouseEnter(Sender: TObject);
begin
            if edit12.Color = clwindow then

            edit12.Color:=clLime;
end;

procedure TForm1.Edit6MouseLeave(Sender: TObject);
begin
         if edit12.Color = clLime then

         edit12.Color:=clwindow;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    MyIni.free;
    ABSTable1.close;
    ABSDatabase1.Close;
    Form1.release;
    application.Terminate;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  myini.WriteString('data','burned',FormatFloat(',0',0));
  edit13.Text:=Myini.ReadString('data','burned',''); //stored data
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if Dialogs.MessageDlg('ATTENTION You are going to modify the estimated SETTINGS, continue ?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
    exit;
     Flag2:=true; //reset dei dati  di uso corrente
     SPD:=False;
     CNS:=False;
     RTE:=False;
     ALRM:=False;

Button1click(Sender);
end;

procedure TForm1.Button9Click(Sender: TObject);   //RESET
begin
       if Dialogs.MessageDlg('You are going to Reset All Data, except Log, continue ?',
    mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
    exit else
    begin
          myini.WriteString('data','burned',FormatFloat('###0.0',0));
          myini.WriteString('data','range',FormatFloat('###0.0',0));
          myini.WriteString('data','LastTpHrs',FormatFloat('###0.0',0));
          myini.WriteString('data','PrevTpHrs',FormatFloat('###0.0',0));
          myini.WriteString('data','hours',FormatFloat('###0.0',0));
          myini.WriteString('data','filling',FormatFloat('###0.0',0));
          myini.WriteString('data','CumFill',FormatFloat('###0.0',0));
          myini.WriteString('data','PartFill',FormatFloat('###0.0',0));
          myini.WriteString('settings','speed',FormatFloat('###0.0',0));
          myini.WriteString('settings','consump',FormatFloat('###0.0',0));
          myini.WriteString('settings','rate',FormatFloat('#0',0));
          myini.WriteString('settings','engstart',FormatFloat('###0.0',0));
          myini.WriteString('settings','fuelBase',FormatFloat('###0.0',0));
          myini.WriteString('settings','alarm',FormatFloat('###0.0',0));
          myini.WriteString('resource','tank',FormatFloat('###0.0',0));
          myini.WriteString('resource','actual',FormatFloat('###0.0',0));
          myini.WriteString('resource','reserve',FormatFloat('###0.0',0));
          myini.WriteString('data','PP',FormatFloat('###0.0',0));
          myini.WriteString('data','LastFcons','NA');
          myini.WriteString('data','HrsCalc',FormatFloat('###0.0',0));
          myini.WriteString('data','pieno','0');
     pieno:=0;
     brnd:=0;
     tempo:=0;
     rb:=0;
     atk:=0;
     riserva:='';
     PBComputing(sender);
     SPD:=False;
     CNS:=False;
     RTE:=False;
     TNK:=False;
     TNKAC:=False;
     ENGSTRT:=False;
     ALRM:=False;
     BRNED:=False;
     FILLED:=False;
     flag1:=False;
     flag2:=False;
          edit9.Text:=myini.ReadString('data','range','');    //stored data
          edit10.Text:=myini.ReadString('data','filling','');  //stored data
          edit12.Text:=MyIni.ReadString('data','hours',''); //stored data
          edit13.Text:=Myini.ReadString('data','burned',''); //stored data
          edit5.Text:=Myini.ReadString('data','LastTpHrs',''); //stored data
          edit19.Text:=Myini.ReadString('data','PrevTpHrs',''); //stored data
          edit1.text:=myini.ReadString('settings','speed','');
          edit2.text:=myini.ReadString('settings','consump','');
          edit3.text:=myini.ReadString('settings','rate','');
          edit7.text:=myini.ReadString('resource','tank','');
          edit8.text:=myini.ReadString('resource','actual','');
          edit14.Text:=myini.ReadString('settings','engstart','');
          edit17.Text:=myini.ReadString('data','CumFill','');
          edit11.Text:=myini.ReadString('data','PartFill','');
          edit18.Text:=myini.ReadString('data','LastFcons','');
          edit15.Text:='0';
          edit4.Text:='0';
          edit20.Text:=zerostr;
          label26.Caption:='';
    end;
end;

procedure TForm1.Button10Click(Sender: TObject);   //RESET del LOG
begin
       if Dialogs.MessageDlg('You are going to EMPTY the Entry Log, continue ?',
    mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
    exit else
    ABSTable1.Close;
    ABSDatabase1.Close;
    ABSTable1.EmptyTable;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
    //Att.settare CKBox implica un OnClick event
begin
        if Dialogs.MessageDlg('Do you mean FULL TANK ? ',
            mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
                  begin                      // fermo l'evento onClick
                  evento:=CheckBox1.OnClick;           // disattivo onClick
                  Checkbox1.onClick:=nil;              // cambio checkbox1 e
                  checkbox1.Checked:=False;  // riattivo l'evento
                  Checkbox1.OnClick:=evento;
                  exit;
                  end else
                  begin
            evento:=CheckBox1.OnClick;           // disattivo onClick
            Checkbox1.onClick:=nil;              // cambio checkbox1 e
            checkbox1.Checked:=True;  // riattivo l'evento
            Checkbox1.OnClick:=evento;
            Button2click(Sender);
                  end;

end;
   // gestione del dato di riserva carburante
procedure TForm1.CheckBox2Click(Sender: TObject);
begin
      riserva:=myini.ReadString('resource','reserve','');
       if Checkbox2.Checked=True then
       begin
       checkbox2.Color:=clRed;
           if riserva>FloatToStr(0) then //c'� la riserva
               begin
                if Dialogs.MessageDlg('Confirm Fuel reserve = '+riserva,
                   mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then   //se corregge il dato di riserva
                     begin
                         repeat
                         riserva:=inputbox('Fuel reserve','Enter fuel reserve in liters (0 for none) ','');
                         until riserva <> '';
                         ShowMessage('Fuel reserve is '+riserva);
                         myini.WriteString('resource','reserve',riserva);
                     end;

               end else //se non c'� un dato di riserva
               begin
               repeat
                 riserva:=inputbox('Fuel reserve','Enter fuel reserve in liters (0 for none) ','');
               until riserva >= FloatToStr(0);
               ShowMessage('Fuel reserve is '+riserva);
               myini.WriteString('resource','reserve',riserva);
               end;
          dato1:=myini.ReadString('resource','actual','');
          riserva:=myini.readstring('resource','reserve','');
          dato2:= FloatToStr(strToFloat(dato1)-strToFloat(riserva));
          if dato2<=floattoStr(0) then
          begin
               if Dialogs.MessageDlg('WARNING - Tank value negative or null. Continue ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNO then
                begin
                  checkbox2.Checked:=False;
                  exit;
                end;
          end;

          edit8.text:=dato2;
       end else //se viene tolto il check
           begin
             checkbox2.Color:=clSkyBlue;
             edit8.text:=myini.ReadString('resource','actual','');
           end;
     PBComputing(Sender);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
edit16.Text:='';
edit15.Text:='';
end;

end.

