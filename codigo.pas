unit u_MenuPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Menus, Mask, DBCtrls, RxLookup,
  ToolEdit, CurrEdit, ToolWin, ImgList, QrpRntr, jpeg, RXCtrls, Buttons, RXDBCtrl, ShellAPI,
  RzButton, RzLabel, RzPanel,
  
  Grids, DBGrids, FMTBcd, DB, SqlExpr;


  type
  TReg_Padrao = record
  int_FundoCaixa, int_Avulso, int_Mensalista :Integer;
  end;

  TfrmMenuPrinc = class(TForm)
    STB_Barra: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    CadastrosBsicos1: TMenuItem;
    Fechar1: TMenuItem;
    Bairros1: TMenuItem;
    Cidades1: TMenuItem;
    EstadosUF1: TMenuItem;
    Funcionrios1: TMenuItem;
    Classes1: TMenuItem;
    Cor1: TMenuItem;
    Marcas1: TMenuItem;
    Ptios1: TMenuItem;
    Financeiro1: TMenuItem;
    TabeladePrecos1: TMenuItem;
    ClientesContratosePlacas1: TMenuItem;
    Cargos1: TMenuItem;
    Manuteno1: TMenuItem;
    ParametrosdoEstacionamento1: TMenuItem;
    ImageList1: TImageList;
    Operacao1: TMenuItem;
    EntradaVeiculos1: TMenuItem;
    TiposdePagamentos1: TMenuItem;
    rocarUsurio1: TMenuItem;
    LancamentodeValoresCaixa1: TMenuItem;
    CaixaOperador1: TMenuItem;
    EmiteDoctoPerdadeTicket1: TMenuItem;
    Estatsticas1: TMenuItem;
    EntradaseSaidasporData1: TMenuItem;
    PlanodeContas1: TMenuItem;
    MovimentacaoDiaria1: TMenuItem;
    Mensalidades1: TMenuItem;
    Timer2: TTimer;
    MEM_MENSAGEM: TDBMemo;
    ImageList2: TImageList;
    ImageList3: TImageList;
    PopupMenu1: TPopupMenu;
    Bairros2: TMenuItem;
    CaixaOperador2: TMenuItem;
    Cargosd1: TMenuItem;
    Cidades2: TMenuItem;
    Classes2: TMenuItem;
    Cores1: TMenuItem;
    EstadosUF2: TMenuItem;
    Funcionarios1: TMenuItem;
    marcas2: TMenuItem;
    Patios1: TMenuItem;
    memMSG_FIN_CUPOM: TDBMemo;
    memMSG_INI_CUPOM: TDBMemo;
    MovimentacaoporPeriodo1: TMenuItem;
    btnTabelaPrecos: TRzBitBtn;
    btnClientes: TRzBitBtn;
    btnTipoPgto: TRzBitBtn;
    RxSpeedButton4: TRzBitBtn;
    btnPlanoConta: TRzBitBtn;
    btnMensalidade: TRzBitBtn;
    btnFuncionarios: TRzBitBtn;
    btnEntradaSaida: TRzBitBtn;
    btnEstatitisca: TRzBitBtn;
    btnConsCaixa: TRzBitBtn;
    btnTipoOperacao: TRzBitBtn;
    btnMovDiaria: TRzBitBtn;
    SpeedButton1: TRzBitBtn;
    SpeedButton2: TRzBitBtn;
    HistoricoVeiculo1: TMenuItem;
    STR_Barra2: TStatusBar;
    edtAno: TEdit;
    edtMes: TEdit;
    edtDia: TEdit;
    Button1: TButton;
    Fornecedores1: TMenuItem;
    Despesas1: TMenuItem;
    edtCorForm: TEdit;
    Servicos1: TMenuItem;
    Graficos1: TMenuItem;
    ListagemdasRPS1: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    MigracaodeDados1: TMenuItem;
    RzPanel2: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    btnProdutos: TRzBitBtn;
    btnPedidos: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    memImpressao: TRichEdit;
    LBL_COD_SOFTWARE: TLabel;
    LBL_SOFTWARE: TLabel;
    SQLQuery1: TSQLQuery;
    procedure p_Preview(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Classes1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure EstadosUF1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure Ptios1Click(Sender: TObject);
    procedure ParametrosdoEstacionamento1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MensagensdoComprovante1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rocarUsurio1Click(Sender: TObject);
    procedure LancamentodeValoresCaixa1Click(Sender: TObject);
    procedure CaixaOperador1Click(Sender: TObject);
    procedure EmiteDoctoPerdadeTicket1Click(Sender: TObject);
    procedure MovimentacaoDiaria1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MovimentacaoporPeriodo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EntradaVeiculos1Click(Sender: TObject);
    procedure btnConsCaixaClick(Sender: TObject);
    procedure btnTipoOperacaoClick(Sender: TObject);
    procedure TabeladePrecos1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure EntradaseSaidasporData1Click(Sender: TObject);
    procedure Mensalidades1Click(Sender: TObject);
    procedure ClientesContratosePlacas1Click(Sender: TObject);
    procedure TiposdePagamentos1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure HistoricoVeiculo1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure Graficos1Click(Sender: TObject);
    procedure ListagemdasRPS1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MigracaodeDados1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnPedidosClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);


  private
    { Private declarations }
    procedure ManipulaExcecoes(Sender: TObject; E: Exception);
  public
    { Public declarations }
    function  f_Mostra_Data:String;
    function  f_CaixaFechado(vlint_CodFun:Integer;vldat_Dia:TDateTime):Boolean;
    function  RemoveChar(Const Texto:String):String;
    function mensagem(corpo:String):integer;
    function  pqryFundDtCxManut(ppstrManut,ppstrCaixa:String):Integer;
    function  CriaRegistroPadrao:TReg_Padrao;
    function  MudaDiaData(pfdat_Data:TDate;pfint_Dia:Smallint):TDate;
	function  f_RetornaDia(dia:smallint): String;
    function fRetornaGenerator(table:String):String;
    function AnoBiSexto(Ayear: Integer): Boolean;
	function DiasPorMes(Ayear, AMonth: Integer): Integer;

    procedure MudarCorDBEdit(Sender: TObject);
    procedure p_PrecoDetalhe(ppint_ID_Preco:Integer);
    procedure p_Patios;
    procedure p_LiberaAcesso(ppstr_Usuario,ppstr_Senha:String);
    procedure p_CaixaUnico;
    procedure p_Filtro_Mensagem;
    procedure pCabecalhoPadraoImpressao;
    procedure pRodapePadraoImpressao;
    procedure pMonitorAcoes(int_CxOperador,int_Funcionario, int_Operacao:Integer;str_Acao,str_Placa:String);
    procedure pTotalizacaoDiariaCaixa(int_ID_FUNCIONARIO_DATA_CAIXA:Integer);
    procedure JumpTo(const aAdress: String);
    procedure p_Gerar_RPS_Cartao(pfdat_Inicial,pfdat_Final:TDateTime);
    procedure p_Contas_a_Receber;
  end;

var
  frmMenuPrinc: TfrmMenuPrinc;
  vgstrCadConsProd:String='';
  vgdou_Saldo_Anterior:Double;
  vgstr_Tipo,vgstr_NomeFuncionario, vgstr_Data_Dup_I, vgstr_Data_Dup_F:String;
  vgstrSaiuSemPagar: String='NAO';
  vgint_Cliente_Chama:Integer=0;
  vgint_ChavePrimaria,
  vgint_IDFuncionario,
  vgint_IDCaixaOperador,
  vgint_ID_OPERACAO,
  vgint_Linha, vgint_TempoEstacionado:Integer;

  vgboo_TROCAR_USUARIO,
  vgboo_SERVICO,
  vgboo_FORNECEDOR,
  vgboo_HIST_PLACA,
  vgboo_BAIRRO      ,
  vgboo_CIDADE      ,
  vgboo_ESTADO_UF   ,
  vgboo_CLASSE      ,
  vgboo_COR         ,
  vgboo_MARCA       ,
  vgboo_FUNCIONARIO ,
  vgboo_CARGO       ,
  vgboo_PATIO       ,
  vgboo_TABELA_PRECO,
  vgboo_EMPRESA     ,
  vgboo_TIPO_PGTO   ,
  vgboo_CLIENTE     ,
  vgboo_CAIXA_DIARIO,
  vgboo_CAIXA_PERIODO,
  vgboo_GRAFICO_DIA_MES_ANO,
  vgboo_CAIXA_OPERADOR,
  vgboo_LCTO_VALORES_CAIXA,
  vgboo_EMITE_DOCTO_PERDA_TICKET,
  vgboo_LISTAGEM_RPS,
  vgboo_ENTRADA_SAIDA_DATA,
  vgboo_ENT_SAI_VEIC,
  vgboo_PARAMS_ESTAC,
  vgboo_MENSALIDADE,
  vgboo_PLANO_DE_CONTA,
  vgboo_CONS_CAIXA_DIARIO,
  vgboo_TIPO_OPERACAO,
  vgboo_DESPESA,
  vgboo_LoginOk,
  vgboo_CaixaFechado,
  vgboo_DESFAZ_ESTATISTICA_VEICULOS,
  vgboo_DESFAZ_LOCALIZA_TICKET_NRO,
  vgboo_PEDIDO,
  vgboo_PRODUTO:Boolean;
  vgboo_TeclouEsc:Boolean=False;
  vgboo_Fechar_Com_Enter:Boolean=False;
  vgstr_Tipo_Saida:String='';
  vgdat_DataAtual, vgdat_DataAtra:TDateTime;
  vgint_TipoImp:Byte=0;
implementation

uses u_Funcionario, u_Bairro, u_Cidade, u_Classe, u_Marca, u_Cor, u_Estado,
  u_Cargo, u_Patio, u_Empresa, u_Funcao, u_DM, u_Preco, u_CliConPla,
  u_Operacao, u_DMCons, u_DM_Aux, u_Tipo_Pgto, u_Nome_Senha, u_LancaCaixa,
  u_CaixaOperador, u_EmiteDoctoPerdaTicket, u_RelacaoEntradasSaidas,
  u_PlanoConta, u_MovDiaria, u_Mensalidade, U_Preview,  u_CaixaConsulta,
  u_TipoOperacao, u_MovPeriodo, u_Caixa_Aberto, u_Valor_Pagar,
  u_HistoricoPlaca, Math, u_Fornecedor, u_ControleNFiscal, u_Servico,
  u_Grafico_Diario, u_DM_Cx, u_FuncaoTrans, u_ListaCarrosRPS, u_Splash,
  u_Cliente, u_Migracao_Dados, u_Produto, u_Pedido, u_LanctoServicos, PrinterLib,
  CharPrinter;

{$R *.dfm}

function TfrmMenuPrinc.AnoBiSexto(Ayear: Integer): Boolean;
begin
   // Verifica se o ano é Bi-Sexto
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
   (AYear mod 400 = 0));
end;

function TfrmMenuPrinc.DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
   Result := DaysInMonth[AMonth];
   if (AMonth = 2) and AnoBiSexto(AYear) then
   Inc(Result);
end;

function TfrmMenuPrinc.f_RetornaDia(dia:smallint): String;
var
  strdiasemana:string;
begin
   case dia of
      1: strdiasemana:= 'DOM';
      2: strdiasemana:= 'SEG';
      3: strdiasemana:= 'TER';
      4: strdiasemana:= 'QUA';
      5: strdiasemana:= 'QUI';
      6: strdiasemana:= 'SEX';
      7: strdiasemana:= 'SAB';
   end;
   Result:= strdiasemana;
end;

function TfrmMenuPrinc.f_Mostra_Data: String;
var
  dthoje:tdatetime;
  diasemana:integer;
  strdiasemana:string;
begin
   dthoje   := Date;
   diasemana:= DayOfWeek(dthoje);
   case diasemana of
      1: strdiasemana:= 'Domingo';
      2: strdiasemana:= 'Segunda-feira';
      3: strdiasemana:= 'Terça-feira';
      4: strdiasemana:= 'Quarta-feira';
      5: strdiasemana:= 'Quinta-feira';
      6: strdiasemana:= 'Sexta-feira';
      7: strdiasemana:= 'Sábado';
   end;
   f_Mostra_Data := strdiasemana+' '+DateToStr(dthoje);
end;

procedure TfrmMenuPrinc.Timer1Timer(Sender: TObject);
var
Present: TDateTime;
Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin

   STB_Barra.PANELS[3].TEXT := f_Mostra_Data();

   STB_Barra.Panels[0].Text := TimeToStr(Time);
   if GetKeyState(VK_NUMLOCK) = 1 then
      STB_Barra.Panels[1].Text := ' Num Lock: On'
   else
      STB_Barra.Panels[1].Text := ' Num Lock: Off';
   if GetKeyState(VK_CAPITAL) = 1 then
      STB_Barra.Panels[2].Text := ' Caps Lock: On'
   else
      STB_Barra.Panels[2].Text := ' Caps Lock: Off';

   Present:= Now;
   DecodeTime(Present, Hour, Min, Sec, MSec);


   if Hour < 12 then
      STB_Barra.Panels[4].Text := ' Bom Dia!';

   if Hour > 12 then
      STB_Barra.Panels[4].Text := ' Boa Tarde!';

   if Hour >= 18 then
      STB_Barra.Panels[4].Text := ' Boa Noite!';
end;

procedure TfrmMenuPrinc.Bairros1Click(Sender: TObject);
begin
   frmBairro := TfrmBairro.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmBairro.ShowModal
   finally
      FreeAndNil(frmBairro);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Cidades1Click(Sender: TObject);
begin
   frmCidade := TfrmCidade.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmCidade.ShowModal
   finally
      FreeAndNil(frmCidade);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Classes1Click(Sender: TObject);
begin
   frmClasse := TfrmClasse.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmClasse.ShowModal
   finally
      FreeAndNil(frmClasse);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Marcas1Click(Sender: TObject);
begin
  frmMarca := TfrmMarca.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmMarca.ShowModal
  finally
    FreeAndNil(frmMarca);
    frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.Cor1Click(Sender: TObject);
begin
   frmCor := TfrmCor.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmCor.ShowModal
   finally
      FreeAndNil(frmCor);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.EstadosUF1Click(Sender: TObject);
begin
   frmEstado := TfrmEstado.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmEstado.ShowModal
   finally
      FreeAndNil(frmEstado);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Cargos1Click(Sender: TObject);
begin
   frmCargo := TfrmCargo.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmCargo.ShowModal
   finally
      FreeAndNil(frmCargo);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Ptios1Click(Sender: TObject);
begin
   frmPatio := TfrmPatio.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmPatio.ShowModal
   finally
      FreeAndNil(frmPatio);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.ParametrosdoEstacionamento1Click(Sender: TObject);
begin
   frmEmpresa := TfrmEmpresa.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmEmpresa.ShowModal
   finally
      FreeAndNil(frmEmpresa);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.FormShow(Sender: TObject);
begin
  
  f_Close_Open_CDS(DM.cdsTabela);
  f_Close_Open_CDS(DM.cdsTable);
  f_Close_Open_CDS(DM.cdsEmpresa);

  // inserindo dados padrão para emissao de nfe-s
  if (DM.cdsEmpresaNFE_SERIE.AsString='') then
  begin
     DM.cdsEmpresa.Edit;
     DM.cdsEmpresaNFE_SERIE.AsString                       := 'F';
     DM.cdsEmpresaNFE_TIPO.AsInteger                       := 1;
     DM.cdsEmpresaNFE_NATUREZA_OPERACAO.AsInteger          := 1;
     DM.cdsEmpresaNFE_OPTANTE_SIMPLES_NACIONAL.AsInteger   := 2;
     DM.cdsEmpresaNFE_INCENTIVADOR_CULTURAL.AsInteger      := 2;
     DM.cdsEmpresaNFE_STATUS.AsInteger                     := 1;
     DM.cdsEmpresaNFE_ISS_RETIDO.AsInteger                 := 2;
     DM.cdsEmpresaNFE_ALIQUOTA.AsFloat                     := 0.05;
     DM.cdsEmpresaNFE_ITEM_LISTA_SERVICO.AsInteger         := 1101;
     DM.cdsEmpresaNFE_CODIGO_TRIBUTACAO_MUNICIPIO.AsInteger:= 1101;
     DM.cdsEmpresaNFE_DISCRIMINACAO.AsString               := 'PERMANENCIA NO ESTACIONAMENTO';
     f_Commit(DM.dtsEmpresa);
  end;

  if DM.cdsEmpresaSP_CHAVE_PRIMARIA_ATIVA.AsString = '' then
  begin
     if ((f_Close_Open_CDS(DM.cdsTabela)) <> (f_Close_Open_CDS(DM.cdsTable))) then
     begin
       DM.cdsTable.First;
       while not DM.cdsTable.Eof do
       begin
         Application.ProcessMessages;
         DM.cdsTabela.Params[0].AsString := Trim(DM.cdsTableTABELA.AsString);
         if (f_Close_Open_CDS(DM.cdsTabela)=0) then
         begin
           try
             p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
             ' select * from rdb$generators where rdb$generator_name =      '+QuotedStr('GEN_'+Trim(DM.cdsTableTABELA.AsString)+'_ID'),'');
             if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
               DM.Conexao.ExecuteDirect('CREATE SEQUENCE GEN_'+Trim(DM.cdsTableTABELA.AsString)+'_ID');
           except
             ShowMessage('Generator já existe!!!');
           end;
           f_Chave_Primaria(Trim(DM.cdsTableTABELA.AsString));
         end;
         DM.cdsTable.Next;
       end;
     end;
     DM.Conexao.ExecuteDirect('update EMPRESA set SP_CHAVE_PRIMARIA_ATIVA='+QuotedStr('SIM'));
  end;
  DM.Conexao.ExecuteDirect('update CLIENTE set DATA_INICIO_CONTRATO=DATA_VENC');

  p_grava_leitura_ini('leitura',ExtractFilePath(Application.ExeName)+'ini\Senha',1,Self);

  if edtCorForm.Text = '' then
  begin
    edtCorForm.Text := '$00A56E3A';
    p_grava_leitura_ini('grava',ExtractFilePath(Application.ExeName)+'ini\Senha',1,Self);
  end;

  f_Close_Open_CDS(DM.cdsEmpresa);
  Caption := 'PARKING - Menu Principal';

  try
    p_Filtro_Mensagem;

    if f_Close_Open_CDS(DMCons.cdsMensagem)= 1 then
      p_Abre_Vazio_ou_Nao(DM.cdsMensagem,DMCons.cdsMensagemID_MENSAGEM.AsInteger)
    else
    begin
      DMCons.qryMensagem.Close;
      DMCons.qryMensagem.SQL.Clear;
      DMCons.qryMensagem.SQL.Add(' select * from MENSAGEM'+
                                  ' where (data is Null)'+
                                  ' order by id_mensagem');
      if (f_Close_Open_CDS(DMCons.cdsMensagem)=0) then
      begin
         DM.Conexao.ExecuteDirect(' update MENSAGEM set data = Null');
         DMCons.qryMensagem.Close;
         DMCons.qryMensagem.SQL.Clear;
         DMCons.qryMensagem.SQL.Add(' select * from MENSAGEM'+
                                    ' where (data is Null)'+
                                    ' order by id_mensagem');
         f_Close_Open_CDS(DMCons.cdsMensagem);
      end;

      try
         DMCons.cdsMensagem.Edit;
         DMCons.cdsMensagemDATA.AsDateTime := Date;
         f_Commit(DMCons.dtsMensagem);
      except
      end;

      p_Filtro_Mensagem;
      f_Close_Open_CDS(DMCons.cdsMensagem);
      p_Abre_Vazio_ou_Nao(DM.cdsMensagem,DMCons.cdsMensagemID_MENSAGEM.AsInteger);
    end;


   MEM_MENSAGEM.Height  := MEM_MENSAGEM.Lines.Count;
  except
  end;


  STR_Barra2.Panels[0].Text :=  DM.cdsEmpresaNOME_FANTASIA.AsString+' | '+DM.cdsEmpresaENDERECO.AsString;
  STR_Barra2.Panels[2].Text :=  'Criado em: '+f_retorna_data_arquivo;
end;

procedure TfrmMenuPrinc.MudarCorDBEdit(Sender: TObject);
begin
  // verificar o camponente
  if (Sender is TRxDBCalcEdit) then
  if (TRxDBCalcEdit(Sender).Color = $0080FFFF) then
    TRxDBCalcEdit(Sender).Color := clWindow
  else
    TRxDBCalcEdit(Sender).Color := $0080FFFF;

  if (Sender is TDBDateEdit) then
  if (TDBDateEdit(Sender).Color = $0080FFFF) then
    TDBDateEdit(Sender).Color := clWindow
  else
    TDBDateEdit(Sender).Color := $0080FFFF;

  if (Sender is TDBEdit) then
  if (TDBEdit(Sender).Color = $0080FFFF) then
    TDBEdit(Sender).Color := clWindow
  else
    TDBEdit(Sender).Color := $0080FFFF;

  if (Sender is TEdit) then
  if (TEdit(Sender).Color = $0080FFFF) then
    TEdit(Sender).Color := clWindow
  else
    TEdit(Sender).Color := $0080FFFF;

  if (Sender is TCurrencyEdit) then
  if (TCurrencyEdit(Sender).Color = $0080FFFF) then
    TCurrencyEdit(Sender).Color := clWindow
  else
    TCurrencyEdit(Sender).Color := $0080FFFF;

  if (Sender is TRxDBLookupCombo) then
  if (TRxDBLookupCombo(Sender).Color = $0080FFFF) then
    TRxDBLookupCombo(Sender).Color := clWindow
  else
    TRxDBLookupCombo(Sender).Color := $0080FFFF;

  if (Sender is TDBMemo) then
  if (TDBMemo(Sender).Color = $0080FFFF) then
    TDBMemo(Sender).Color := clWindow
  else
    TDBMemo(Sender).Color := $0080FFFF;

   if (Sender is TDBCheckBox) then
   if (TDBCheckBox(Sender).Color = $0080FFFF) then
      TDBCheckBox(Sender).Color := clWindow
   else
      TDBCheckBox(Sender).Color := $0080FFFF;

   if (Sender is TComboBox) then
   if (TComboBox(Sender).Color = $0080FFFF) then
      TComboBox(Sender).Color := clWindow
   else
      TComboBox(Sender).Color := $0080FFFF;

end;

procedure TfrmMenuPrinc.MensagensdoComprovante1Click(Sender: TObject);
begin
   vgstr_Tipo := 'Mensagens do Comprovante';
   frmEmpresa := TfrmEmpresa.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmEmpresa.ShowModal
   finally
      FreeAndNil(frmEmpresa);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.p_PrecoDetalhe(ppint_ID_Preco:Integer);
begin
  DM.cdsPrecoDet.Params[0].AsInteger := ppint_ID_Preco;
  f_Close_Open_CDS(DM.cdsPrecoDet);

  DM.cdsPrecoDet.First;
  while not DM.cdsPrecoDet.Eof do
  begin
    Application.ProcessMessages;
    DM.cdsPrecoDet.Edit;
    DM.cdsPrecoDetNUMERACAO.AsInteger := 0;
    DM.cdsPrecoDetVALOR_PAGAR.AsFloat := 0;
    f_Commit(DM.dtsPrecoDet);
    DM.cdsPrecoDet.Next;
  end;
end;

procedure TfrmMenuPrinc.p_Patios;
var   vlstr_Data_I, vlstr_Data_F:String;
begin
  f_Close_Open_CDS(DMCons.cdsPatio);
  DMCons.cdsPatio.First;
  while not DMCons.cdsPatio.Eof do
  begin
    Application.ProcessMessages;
    p_Exec_Open_QRY(DM_Aux.QRY_Aux_7,' select * from SP_TOTAL_PATIO ('+QuotedStr(DMCons.cdsPatioID_PATIO.AsString)+')','');
    f_Close_Open_CDS(DM_Aux.CDS_Aux_7);
    DMCons.cdsPatio.Edit;
    DMCons.cdsPatioLIVRES.AsInteger   := DMCons.cdsPatioVAGAS.AsInteger - DM_Aux.CDS_Aux_7.FieldByName('total').AsInteger;
    DMCons.cdsPatioOCUPADAS.AsInteger := DM_Aux.CDS_Aux_7.FieldByName('total').AsInteger;
    f_Commit(DMCons.dtsPatio);
    DMCons.cdsPatio.Next;
  end;
  f_Close_Open_CDS(DMCons.cdsPatio);

   vlstr_Data_I  := FormatDateTime('mm/dd/yyyy',Date);
   vlstr_Data_F  := FormatDateTime('mm/dd/yyyy',Date);

   p_Exec_Open_QRY(DMCons.qryTipoCont, ' select distinct(o.tipo_contrato), count(*) from operacao o'+
     											 ' where (o.fechado='+QuotedStr('NAO')+')'+
										       ' and (o.data_saida is null) group by o.tipo_contrato', '');
   f_Close_Open_CDS(DMCons.cdsTipoCont);


end;

procedure TfrmMenuPrinc.FormActivate(Sender: TObject);
begin
  if vgint_IDFuncionario = 0 then
  begin
    frmNomeSenha := TfrmNomeSenha.create ( application );
    try
      frmNomeSenha.ShowModal
    finally
      FreeAndNil(frmNomeSenha);
    end;
  end;
  p_CaixaUnico;


  f_Close_Open_CDS(DM.cdsEmpresa);
  if DM.cdsEmpresaMODELO_IMPRESSORA.AsString = 'i9:Elgin' then vgint_TipoImp := 1;

  if vgint_IDFuncionario <> 0 then
  begin
    if DM.cdsFuncAceENT_SAI_VEICULO.AsInteger = 1 then
    begin
      EntradaVeiculos1Click(Sender);
    end;
  end;
end;

procedure TfrmMenuPrinc.p_LiberaAcesso(ppstr_Usuario, ppstr_Senha: String);
  procedure p_Abre_caixa;
  begin
    p_CaixaUnico;
    p_Exec_Open_QRY(DM_Aux.QRY_Aux_5,' select * from FUNCIONARIO_DATA_CAIXA'+
                                     ' where (id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+')'+
                                     ' and (caixa_fechado='+QuotedStr('NAO')+')','');
    if (f_Close_Open_CDS(DM_Aux.CDS_Aux_5)=0) then
    begin
      f_Close_Open_CDS(DM.cdsFundDtCx);
      DM.cdsFundDtCx.Append;
      DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger := f_Auto_Incremento_Manual('FUNCIONARIO_DATA_CAIXA','ID_FUNCIONARIO_DATA_CAIXA');
      DM.cdsFundDtCxID_FUNCIONARIO.AsInteger            := vgint_IDFuncionario;
      DM.cdsFundDtCxID_CAIXA_OPERADOR.AsInteger         := vgint_IDCaixaOperador;
      DM.cdsFundDtCxDATA_CAIXA.AsDateTime               := Date;
      DM.cdsFundDtCxDIA_SEMANA.AsString                 := f_Mostra_Dia_Abrev(Date);
      DM.cdsFundDtCxTOTAL_ENT.AsFloat                   := 0;
      DM.cdsFundDtCxTOTAL_SAI.AsFloat                   := 0;
      DM.cdsFundDtCxQTDE_ATEND.AsInteger                := 0;
      f_Commit(DM.dtsFundDtCx);
    end
    else
    begin
      DM.cdsFundDtCx.Params[0].AsInteger := DM_Aux.CDS_Aux_5.FieldByName('id_caixa_operador').AsInteger;
      f_Close_Open_CDS(DM.cdsFundDtCx);
    end;
  end;
begin
  vgboo_BAIRRO                   := False;
  vgboo_CIDADE                   := False;
  vgboo_ESTADO_UF                := False;
  vgboo_CLASSE                   := False;
  vgboo_COR                      := False;
  vgboo_MARCA                    := False;
  vgboo_FUNCIONARIO              := False;
  vgboo_CARGO                    := False;
  vgboo_PATIO                    := False;
  vgboo_TABELA_PRECO             := False;
  vgboo_EMPRESA                  := False;
  vgboo_TIPO_PGTO                := False;
  vgboo_CLIENTE                  := False;
  vgboo_CAIXA_DIARIO             := False;
  vgboo_ENT_SAI_VEIC             := False;
  vgboo_PARAMS_ESTAC             := False;
  vgboo_CAIXA_OPERADOR           := False;
  vgboo_EMITE_DOCTO_PERDA_TICKET := False;
  vgboo_LISTAGEM_RPS             := False;
  vgboo_LCTO_VALORES_CAIXA       := False;
  vgboo_ENTRADA_SAIDA_DATA       := False;
  vgboo_MENSALIDADE              := False;
  vgboo_PLANO_DE_CONTA           := False;
  vgboo_CONS_CAIXA_DIARIO        := False;
  vgboo_TIPO_OPERACAO            := False;
  vgboo_CAIXA_PERIODO            := False;
  vgboo_GRAFICO_DIA_MES_ANO      := False;
  vgboo_DESPESA                  := False;
  vgboo_SERVICO                  := False;
  vgboo_FORNECEDOR               := False;
  vgboo_HIST_PLACA               := False;

  Servicos1.Enabled                   := vgboo_SERVICO;
  Fornecedores1.Enabled               := vgboo_FORNECEDOR;
  HistoricoVeiculo1.Enabled           := vgboo_HIST_PLACA;
  Despesas1.Enabled                   := vgboo_DESPESA;
  Bairros1.Enabled                    := vgboo_BAIRRO;
  Cidades1.Enabled                    := vgboo_CIDADE;
  EstadosUF1.Enabled                  := vgboo_ESTADO_UF;
  Classes1.Enabled                    := vgboo_CLASSE;
  Cor1.Enabled                        := vgboo_COR;
  Marcas1.Enabled                     := vgboo_MARCA;
  Funcionrios1.Enabled                := vgboo_FUNCIONARIO;
  Cargos1.Enabled                     := vgboo_CARGO;
  Ptios1.Enabled                      := vgboo_PATIO;
  TabeladePrecos1.Enabled             := vgboo_TABELA_PRECO;
  TiposdePagamentos1.Enabled          := vgboo_TIPO_PGTO;
  ClientesContratosePlacas1.Enabled   := vgboo_CLIENTE;
  MovimentacaoDiaria1.Enabled         := vgboo_CAIXA_DIARIO;
  EntradaVeiculos1.Enabled            := vgboo_ENT_SAI_VEIC;
  ParametrosdoEstacionamento1.Enabled := vgboo_PARAMS_ESTAC;
  SpeedButton2.Enabled                := vgboo_PARAMS_ESTAC;



  EmiteDoctoPerdadeTicket1.Enabled    := vgboo_EMITE_DOCTO_PERDA_TICKET;
  ListagemdasRPS1.Enabled             := vgboo_LISTAGEM_RPS;
  SpeedButton1.Enabled                := vgboo_EMITE_DOCTO_PERDA_TICKET;
  CaixaOperador1.Enabled              := vgboo_CAIXA_OPERADOR;
  EntradaseSaidasporData1.Enabled     := vgboo_ENTRADA_SAIDA_DATA;
  LancamentodeValoresCaixa1.Enabled   := vgboo_LCTO_VALORES_CAIXA;
  Mensalidades1.Enabled               := vgboo_MENSALIDADE;
  PlanodeContas1.Enabled              := vgboo_PLANO_DE_CONTA;
  btnClientes.Enabled                 := vgboo_CLIENTE;
  btnTabelaPrecos.Enabled             := vgboo_TABELA_PRECO;
  btnFuncionarios.Enabled             := vgboo_FUNCIONARIO;
  btnMensalidade.Enabled              := vgboo_MENSALIDADE;
  btnTipoPgto.Enabled                 := vgboo_TIPO_PGTO;
  btnPlanoConta.Enabled               := vgboo_PLANO_DE_CONTA;
  btnEntradaSaida.Enabled             := vgboo_ENT_SAI_VEIC;
  btnEstatitisca.Enabled              := vgboo_ENTRADA_SAIDA_DATA;
  btnConsCaixa.Enabled                := vgboo_CONS_CAIXA_DIARIO;
  btnTipoOperacao.Enabled             := vgboo_TIPO_OPERACAO;
  btnMovDiaria.Enabled                := vgboo_CAIXA_DIARIO;
  MovimentacaoporPeriodo1.Enabled     := vgboo_CAIXA_PERIODO;
  Graficos1.Enabled                   := vgboo_GRAFICO_DIA_MES_ANO;

  p_Exec_Open_QRY(DM.QRY_Aux,
  ' select ID_FUNCIONARIO, SENHA_USUARIO from FUNCIONARIO'+
  ' where  (NOME_USUARIO='+QuotedStr(ppstr_Usuario)+')'+
  ' and   (SENHA_USUARIO='+QuotedStr(ppstr_Senha)+')','Open');

  vgint_IDFuncionario               := DM.QRY_Aux.FieldByName('ID_FUNCIONARIO').AsInteger;
  DM.cdsFuncAce.Params[0].AsInteger := vgint_IDFuncionario;
  f_Close_Open_CDS(DM.cdsFuncAce);

  DM.cdsFunc.Params[0].AsInteger := vgint_IDFuncionario;
  f_Close_Open_CDS(DM.cdsFunc);

  if (vgint_IDFuncionario <> 0) then
  begin
     if ((ppstr_Usuario = 'LOURENCO') and (ppstr_Senha = '*****')) then
     begin
       vgboo_BAIRRO                     := True;
       vgboo_CIDADE                     := True;
       vgboo_ESTADO_UF                  := True;
       vgboo_CLASSE                     := True;
       vgboo_COR                        := True;
       vgboo_MARCA                      := True;
       vgboo_FUNCIONARIO                := True;
       vgboo_CARGO                      := True;
       vgboo_PATIO                      := True;
       vgboo_TABELA_PRECO               := True;
       vgboo_EMPRESA                    := True;
       vgboo_TIPO_PGTO                  := True;
       vgboo_CLIENTE                    := True;
       vgboo_CAIXA_DIARIO               := True;
       vgboo_ENT_SAI_VEIC               := True;
       vgboo_PARAMS_ESTAC               := True;
       vgboo_CAIXA_OPERADOR             := True;
       vgboo_EMITE_DOCTO_PERDA_TICKET   := True;
       vgboo_LISTAGEM_RPS               := True;
       vgboo_LCTO_VALORES_CAIXA         := True;
       vgboo_ENTRADA_SAIDA_DATA         := True;
       vgboo_LoginOk                    := True;
       vgboo_CLIENTE                    := True;
       vgboo_TABELA_PRECO               := True;
       vgboo_FUNCIONARIO                := True;
       vgboo_MENSALIDADE                := True;
       vgboo_TIPO_PGTO                  := True;
       vgboo_PLANO_DE_CONTA             := True;
       vgboo_ENT_SAI_VEIC               := True;
       vgboo_CONS_CAIXA_DIARIO          := True;
       vgboo_TIPO_OPERACAO              := True;
       vgboo_LoginOk                    := True;
       vgboo_DESFAZ_LOCALIZA_TICKET_NRO := True;
       vgboo_CAIXA_PERIODO              := True;
       vgboo_GRAFICO_DIA_MES_ANO        := True;
       vgboo_DESPESA                    := True;
       vgboo_SERVICO                    := True;
       vgboo_FORNECEDOR                 := True;
       vgboo_HIST_PLACA                 := True;
       vgboo_PRODUTO                    := True;
       vgboo_PEDIDO                     := True;
       vgstr_NomeFuncionario            := ppstr_Usuario;


       p_CaixaUnico;
       DMCons.cdsFundDtCx.Params[0].AsInteger := DMCons.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
       f_Close_Open_CDS(DMCons.cdsFundDtCx);
       DMCons.cdsFundDtCx.Last;

       if (DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime = Date) and (DMCons.cdsFundDtCxCAIXA_FECHADO.AsString ='SIM') then
       begin
         if f_Leitura_Ini(ExtractFilePath(Application.ExeName)+'ini\Senha','Configuracao','chkEstac24hrs') then
           p_Abre_caixa
         else
           Application.MessageBox('O caixa de hoje está fechado, sistema liberado apenas para consulta!','Atenção',0+48);
       end
       else
           p_Abre_caixa;
     end
     else
     begin
        if DM.cdsFuncAceSERVICO.AsInteger                     = 1 then vgboo_SERVICO                     := True;
        if DM.cdsFuncAceFORNECEDOR.AsInteger                  = 1 then vgboo_FORNECEDOR                  := True;
        if DM.cdsFuncAceHISTORICO_PLACA.AsInteger             = 1 then vgboo_HIST_PLACA                  := True;
        if DM.cdsFuncAceBAIRRO.AsInteger                      = 1 then vgboo_BAIRRO                      := True;
        if DM.cdsFuncAceCIDADE.AsInteger                      = 1 then vgboo_CIDADE                      := True;
        if DM.cdsFuncAceESTADO_UF.AsInteger                   = 1 then vgboo_ESTADO_UF                   := True;
        if DM.cdsFuncAceCLASSE.AsInteger                      = 1 then vgboo_CLASSE                      := True;
        if DM.cdsFuncAceCOR.AsInteger                         = 1 then vgboo_COR                         := True;
        if DM.cdsFuncAceMARCA.AsInteger                       = 1 then vgboo_MARCA                       := True;
        if DM.cdsFuncAceFUNCIONARIO.AsInteger                 = 1 then vgboo_FUNCIONARIO                 := True;
        if DM.cdsFuncAceCARGO.AsInteger                       = 1 then vgboo_CARGO                       := True;
        if DM.cdsFuncAcePATIO.AsInteger                       = 1 then vgboo_PATIO                       := True;
        if DM.cdsFuncAceTABELA_PRECO.AsInteger                = 1 then vgboo_TABELA_PRECO                := True;
        if DM.cdsFuncAceEMPRESA.AsInteger                     = 1 then vgboo_EMPRESA                     := True;
        if DM.cdsFuncAceTIPO_PGTO.AsInteger                   = 1 then vgboo_TIPO_PGTO                   := True;
        if DM.cdsFuncAceCLIENTE.AsInteger                     = 1 then vgboo_CLIENTE                     := True;
        if DM.cdsFuncAceCAIXA_DIARIO.AsInteger                = 1 then vgboo_CAIXA_DIARIO                := True;
        if DM.cdsFuncAceENT_SAI_VEICULO.AsInteger             = 1 then vgboo_ENT_SAI_VEIC                := True;
        if DM.cdsFuncAcePARAMS_ESTACIONAMENTO.AsInteger       = 1 then vgboo_PARAMS_ESTAC                := True;
        if DM.cdsFuncAceCAIXA_OPERADOR.AsInteger              = 1 then vgboo_CAIXA_OPERADOR              := True;
        if DM.cdsFuncAceEMITE_DOC_PERDA_TICKET.AsInteger      = 1 then vgboo_EMITE_DOCTO_PERDA_TICKET    := True;
        if DM.cdsFuncAceLISTAGEM_RPS.AsInteger                = 1 then vgboo_LISTAGEM_RPS                := True;
        if DM.cdsFuncAceLCTO_VALORES_CAIXA.AsInteger          = 1 then vgboo_LCTO_VALORES_CAIXA          := True;
        if DM.cdsFuncAceENT_SAI_POR_DATA.AsInteger            = 1 then vgboo_ENTRADA_SAIDA_DATA          := True;
        if DM.cdsFuncAceMENSALIDADE_CONVENIO.AsInteger        = 1 then vgboo_MENSALIDADE                 := True;
        if DM.cdsFuncAcePLANO_DE_CONTA.AsInteger              = 1 then vgboo_PLANO_DE_CONTA              := True;
        if DM.cdsFuncAceCONS_CAIXA_DIARIO.AsInteger           = 1 then vgboo_CONS_CAIXA_DIARIO           := True;
        if DM.cdsFuncAceTIPO_OPERACAO.AsInteger               = 1 then vgboo_TIPO_OPERACAO               := True;
        if DM.cdsFuncAceDESFAZ_ESTATISTICA_VEICULOS.AsInteger = 1 then vgboo_DESFAZ_ESTATISTICA_VEICULOS := True;
        if DM.cdsFuncAceDESFAZ_LOCALIZA_TICKET_NRO.AsInteger  = 1 then vgboo_DESFAZ_LOCALIZA_TICKET_NRO  := True;
        if DM.cdsFuncAceGRAFICO_DIA_MES_ANO.AsInteger         = 1 then vgboo_GRAFICO_DIA_MES_ANO         := True;
        if DM.cdsFuncAceCAIXA_PERIODO.AsInteger               = 1 then vgboo_CAIXA_PERIODO               := True;
        if DM.cdsFuncAceDESPESA.AsInteger                     = 1 then vgboo_DESPESA                     := True;
        if DM.cdsFuncAcePEDIDO.AsInteger                      = 1 then vgboo_PEDIDO                     := True;
        if DM.cdsFuncAcePRODUTO.AsInteger                     = 1 then vgboo_PRODUTO                      := True;

        vgboo_LoginOk         := True;
        vgstr_NomeFuncionario := ppstr_Usuario;
       p_CaixaUnico;
       DMCons.cdsFundDtCx.Params[0].AsInteger := DMCons.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
       f_Close_Open_CDS(DMCons.cdsFundDtCx);
       DMCons.cdsFundDtCx.Last;

       if (DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime = Date) and (DMCons.cdsFundDtCxCAIXA_FECHADO.AsString ='SIM') then
       begin
         if f_Leitura_Ini(ExtractFilePath(Application.ExeName)+'ini\Senha','Configuracao','chkEstac24hrs') then
           p_Abre_caixa
         else
           Application.MessageBox('O caixa de hoje está fechado, sistema liberado apenas para consulta!','Atenção',0+48);
       end
       else
           p_Abre_caixa;
     end;
  end
  else
  begin
     Application.MessageBox('Nome ou Senha Inválidos!','Atenção',0+48);
     vgboo_LoginOk := False;
     vgint_IDFuncionario := 0;
     Exit;
  end;

  Servicos1.Enabled                   := vgboo_SERVICO;
  Fornecedores1.Enabled               := vgboo_FORNECEDOR;
  HistoricoVeiculo1.Enabled           := vgboo_HIST_PLACA;
  MovimentacaoporPeriodo1.Enabled     := vgboo_CAIXA_PERIODO;
  Graficos1.Enabled                   := vgboo_GRAFICO_DIA_MES_ANO;
  Bairros1.Enabled                    := vgboo_BAIRRO;
  Cidades1.Enabled                    := vgboo_CIDADE;
  EstadosUF1.Enabled                  := vgboo_ESTADO_UF;
  Classes1.Enabled                    := vgboo_CLASSE;
  Cor1.Enabled                        := vgboo_COR;
  Marcas1.Enabled                     := vgboo_MARCA;
  Funcionrios1.Enabled                := vgboo_FUNCIONARIO;
  Cargos1.Enabled                     := vgboo_CARGO;
  Ptios1.Enabled                      := vgboo_PATIO;
  TabeladePrecos1.Enabled             := vgboo_TABELA_PRECO;
  TiposdePagamentos1.Enabled          := vgboo_TIPO_PGTO;
  ClientesContratosePlacas1.Enabled   := vgboo_CLIENTE;
  MovimentacaoDiaria1.Enabled         := vgboo_CAIXA_DIARIO;
  EntradaVeiculos1.Enabled            := vgboo_ENT_SAI_VEIC;
  ParametrosdoEstacionamento1.Enabled := vgboo_PARAMS_ESTAC;
  SpeedButton2.Enabled                := vgboo_PARAMS_ESTAC;
  EmiteDoctoPerdadeTicket1.Enabled    := vgboo_EMITE_DOCTO_PERDA_TICKET;
  SpeedButton1.Enabled                := vgboo_EMITE_DOCTO_PERDA_TICKET;
  ListagemdasRPS1.Enabled             := vgboo_LISTAGEM_RPS;
  LancamentodeValoresCaixa1.Enabled   := vgboo_LCTO_VALORES_CAIXA;
  EntradaseSaidasporData1.Enabled     := vgboo_ENTRADA_SAIDA_DATA;
  CaixaOperador1.Enabled              := vgboo_CAIXA_OPERADOR;
  Mensalidades1.Enabled               := vgboo_MENSALIDADE;
  PlanodeContas1.Enabled              := vgboo_PLANO_DE_CONTA;
  btnClientes.Enabled                 := vgboo_CLIENTE;
  btnTabelaPrecos.Enabled             := vgboo_TABELA_PRECO;
  btnFuncionarios.Enabled             := vgboo_FUNCIONARIO;
  btnMensalidade.Enabled              := vgboo_MENSALIDADE;
  btnTipoPgto.Enabled                 := vgboo_TIPO_PGTO;
  btnPlanoConta.Enabled               := vgboo_PLANO_DE_CONTA;
  btnEntradaSaida.Enabled             := vgboo_ENT_SAI_VEIC;
  btnEstatitisca.Enabled              := vgboo_ENTRADA_SAIDA_DATA;
  btnConsCaixa.Enabled                := vgboo_CONS_CAIXA_DIARIO;
  btnTipoOperacao.Enabled             := vgboo_TIPO_OPERACAO;
  btnMovDiaria.Enabled                := vgboo_CAIXA_DIARIO;
  Despesas1.Enabled                   := vgboo_DESPESA;
  btnPedidos.Visible                  := vgboo_PEDIDO;
  btnProdutos.Visible                 := vgboo_PRODUTO;

  frmMenuPrinc.STB_Barra.PANELS[5].Text            := 'Operador: '+ppstr_Usuario;
end;

procedure TfrmMenuPrinc.rocarUsurio1Click(Sender: TObject);
begin
   vgboo_TROCAR_USUARIO := True;
   vgint_IDFuncionario  := 0;

   frmNomeSenha := TfrmNomeSenha.create ( application );
   try
      frmNomeSenha.ShowModal
   finally
      FreeAndNil(frmNomeSenha);
   end;
   p_CaixaUnico;

   if vgint_IDFuncionario <> 0 then
   begin
      if (DM.cdsFuncAcePEDIDO.AsInteger = 1) then
         btnPedidosClick(Sender)
      else
      if DM.cdsFuncAceENT_SAI_VEICULO.AsInteger = 1 then
         EntradaVeiculos1Click(Sender);
   end;
end;

procedure TfrmMenuPrinc.LancamentodeValoresCaixa1Click(Sender: TObject);
begin
  frmLancaCaixa := TfrmLancaCaixa.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmLancaCaixa.ShowModal
  finally
     FreeAndNil(frmLancaCaixa);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.CaixaOperador1Click(Sender: TObject);
begin
  frmCaixaOperador := TfrmCaixaOperador.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmCaixaOperador.ShowModal
  finally
     FreeAndNil(frmCaixaOperador);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.EmiteDoctoPerdadeTicket1Click(Sender: TObject);
begin
  frmEmiteDoctoPerdaTicket := TfrmEmiteDoctoPerdaTicket.Create(Application);
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmEmiteDoctoPerdaTicket.ShowModal
  finally
     FreeAndNil(frmEmiteDoctoPerdaTicket);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.MovimentacaoDiaria1Click(Sender: TObject);
begin
  frmMovDiaria := TfrmMovDiaria.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmMovDiaria.ShowModal
  finally
     FreeAndNil(frmMovDiaria);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

function TfrmMenuPrinc.f_CaixaFechado(vlint_CodFun: Integer;
  vldat_Dia: TDateTime): Boolean;
var vlstr_Data_I, vlstr_Data_F:String;
begin
  Result := False;

  //VERIFICA SE O CAIXA DO DIA FOI FECHADO
  vlstr_Data_I := f_data_americana(DM.cdsFundDtCxDATA_CAIXA.AsDateTime,'data');
  vlstr_Data_F := f_data_americana(DM.cdsFundDtCxDATA_CAIXA.AsDateTime,'data');

     try
        p_Exec_Open_QRY(DM_Aux.QRY_Aux_7,
        ' select m.id_caixa_operador from MOVIMENTACAO m'+
        ' inner join FUNCIONARIO_DATA_CAIXA f on (m.id_funcionario_data_caixa=f.id_funcionario_data_caixa)'+
        ' where       (m.id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+') '+
        ' and                      (m.flag='+QuotedStr('FC')+') '+
        ' and        (m.data_caixa between '+QuotedStr(vlstr_Data_I)+
                                     ' and '+QuotedStr(vlstr_Data_F)+')'+
        ' and             (f.caixa_fechado='+QuotedStr('SIM')+')'+
        ' and (f.id_funcionario_data_caixa='+QuotedStr(DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');
        if (f_Close_Open_CDS(DM_Aux.CDS_Aux_7)=1) then
          Result := True;
      except
         Result := True;
      end;
end;

procedure TfrmMenuPrinc.p_CaixaUnico;
begin
  f_Close_Open_CDS(DM.cdsEmpresa);

  if (DM.cdsEmpresaCAIXA_UNICO.AsInteger = 1) then
  begin
    if f_Close_Open_CDS(DMCons.cdsCaixaOpe)= 0 then
    begin
      f_Close_Open_CDS(DM.cdsCaixaOpe);
      DM.cdsCaixaOpe.Append;
      DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger := SP_Chave_Primaria(QuotedStr('CAIXA_OPERADOR'));
      DM.cdsCaixaOpeID_FUNCIONARIO.AsInteger    := 0;
      DM.cdsCaixaOpeNOME_OPERADOR.AsString      := 'UNICO';
      f_Commit(DM.dtsCaixaOpe);
      f_Close_Open_CDS(DMCons.cdsCaixaOpe);

      vgint_IDCaixaOperador := DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
    end
    else
    begin
      DM.cdsCaixaOpe.Params[0].AsInteger := DMCons.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
      f_Close_Open_CDS(DM.cdsCaixaOpe);

      vgint_IDCaixaOperador := DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
    end;
  end
  else
  begin
    p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,' select * from CAIXA_OPERADOR where (id_funcionario='+QuotedStr(IntToStr(vgint_IDFuncionario))+')','');
    if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
    begin
      f_Close_Open_CDS(DM.cdsCaixaOpe);
      DM.cdsCaixaOpe.Append;
      DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger := SP_Chave_Primaria(QuotedStr('CAIXA_OPERADOR'));
      DM.cdsCaixaOpeID_FUNCIONARIO.AsInteger    := vgint_IDFuncionario;
      DM.cdsCaixaOpeNOME_OPERADOR.AsString      := vgstr_NomeFuncionario;
      f_Commit(DM.dtsCaixaOpe);
      f_Close_Open_CDS(DMCons.cdsCaixaOpe);

      vgint_IDCaixaOperador := DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
    end
    else
    begin
      DM.cdsCaixaOpe.Params[0].AsInteger := DM_Aux.CDS_Aux_1.FieldByName('ID_CAIXA_OPERADOR').AsInteger;
      f_Close_Open_CDS(DM.cdsCaixaOpe);

      vgint_IDCaixaOperador := DM.cdsCaixaOpeID_CAIXA_OPERADOR.AsInteger;
    end;
  end;
end;

procedure TfrmMenuPrinc.p_Preview(Sender: TObject);
begin
  if not Assigned (frmPreview) then
  frmPreview := TfrmPreview.Create(Self);
  frmPreview.QRPreview.QRPrinter := TQRPrinter(Sender);
  frmPreview.Show;
end;

procedure TfrmMenuPrinc.Timer2Timer(Sender: TObject);
begin
   if vgboo_LoginOk = False then
   begin
     Timer2.Enabled := False ;
     vgboo_TROCAR_USUARIO := False;
     vgint_IDFuncionario  := 0;

     frmNomeSenha := TfrmNomeSenha.create ( application );
     try
       frmNomeSenha.ShowModal
     finally
        FreeAndNil(frmNomeSenha);
     end;


     p_CaixaUnico;

     if vgint_IDFuncionario <> 0 then
     begin
       if DM.cdsFuncAceENT_SAI_VEICULO.AsInteger = 1 then
         EntradaVeiculos1Click(Sender);
     end;
   end;

end;

procedure TfrmMenuPrinc.p_Filtro_Mensagem;
begin
  DMCons.qryMensagem.Close;
  DMCons.qryMensagem.SQL.Clear;
  DMCons.qryMensagem.SQL.Add(' select * from MENSAGEM'+
                             ' where (data between '+QuotedStr(FormatDateTime('mm/dd/yyyy',Date))+
                                             ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',Date))+')');
end;

function TfrmMenuPrinc.RemoveChar(const Texto: String): String;
var I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  Result := S;
end;
procedure TfrmMenuPrinc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then
    Application.Terminate;

  if Key = VK_F4 then
    EntradaVeiculos1Click(Sender);

  if Key = VK_F5 then
    ClientesContratosePlacas1Click(Sender);

  if Key = VK_F6 then
    Mensalidades1Click(Sender);
end;



procedure TfrmMenuPrinc.MovimentacaoporPeriodo1Click(Sender: TObject);
begin
  frmMovPeriodo := TfrmMovPeriodo.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmMovPeriodo.ShowModal
  finally
     FreeAndNil(frmMovPeriodo);
     frmMenuPrinc.WindowState := wsMaximized;
  end;

end;


function TfrmMenuPrinc.pqryFundDtCxManut(ppstrManut,ppstrCaixa: String): Integer;
begin
  DMCons.qryFundDtCxManut.Close;
  DMCons.qryFundDtCxManut.Params[0].AsString := ppstrManut;
  DMCons.qryFundDtCxManut.Params[1].AsString := ppstrCaixa;
  DMCons.qryFundDtCxManut.Open;

  if (DMCons.qryFundDtCxManutID_FUNCIONARIO_DATA_CAIXA.AsString = '') then
  begin
    DMCons.qryFundDtCxManut.Close;
    DMCons.qryFundDtCxManut.Params[0].AsString := 'NAO';
    DMCons.qryFundDtCxManut.Params[1].AsString := 'NAO';
    DMCons.qryFundDtCxManut.Open;
  end;

  p_Exec_Open_QRY(DM.qryFundDtCx,' select * from FUNCIONARIO_DATA_CAIXA'+
                                 ' where (id_caixa_operador=:prmCodigo)'+
                                 ' and (caixa_fechado='+QuotedStr('NAO')+')'+
                                 ' and (id_funcionario_data_caixa='+QuotedStr(DMCons.qryFundDtCxManutID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');

  Result := DMCons.qryFundDtCxManutID_FUNCIONARIO_DATA_CAIXA.AsInteger;
end;

procedure TfrmMenuPrinc.pCabecalhoPadraoImpressao;
var iRetorno, vlint_Cont_1, vlint_ModeloImpressora:Integer;
    cTexto:String;
    AnsiStr:AnsiString;
    errNo :Integer;
    modelSetting:string;
    portSetting:string;


    prn:TAdvancedPrinter;
    ln, linha1, linha2, linha3, linha4, linha5, linha6, linha7, linha8, linha9, linha10, tamanho: string;
    tmdesc:integer;
    qtdelinha: currency;
begin
	if (vgint_TipoImp = 0) then
  begin
    f_Close_Open_CDS(DM.cdsEmpresa);

    iRetorno := ConfiguraModeloImpressora(fRetornaModelo(DM.cdsEmpresaMODELO_IMPRESSORA.AsString));
    iRetorno := AjustaLarguraPapel(76);

    if f_Leitura_Ini(ExtractFilePath(Application.ExeName)+'ini\Senha','Configuracao','cmbENTRADA_SAIDA')='ENTRADA' then
      iRetorno := IniciaPorta(pchar(DM.cdsEmpresaPORTA_IMPRESSORA.AsString))
    else
      iRetorno := IniciaPorta(pchar(DM.cdsEmpresaPORTA_IMPRESSORA_SAIDA.AsString))     ;


    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := StringOfChar('-',54)+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := DM.cdsEmpresaNOME_FANTASIA.AsString+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := DM.cdsEmpresaRAZAO.AsString+' - Tel: '+DM.cdsEmpresaFONE.AsString+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := 'CNPJ: '+DM.cdsEmpresaCNPJ.AsString+' - Insc.: '+DM.cdsEmpresaINSC_EST.AsString+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := DM.cdsEmpresaENDERECO.AsString+' - '+DM.cdsEmpresaNOME_BAIRRO.AsString+' - '+DM.cdsEmpresaNOME_CIDADE.AsString+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );

    cTexto   := StringOfChar('-',54)+Char(10);
    iRetorno := FormataTX( pchar( cTexto ), 1, 0, 0, 0, 0 );
  end
  else
	if (vgint_TipoImp = 1) then
  begin
    memImpressao.Lines.Clear;

    f_Close_Open_CDS(DM.cdsEmpresa);

    errNo := E_SUCCESS;
    modelSetting := 'i9';
    portSetting  :=  'USB';

    if(PrinterCreator(modelSetting))then
    begin
     if(errNo<>(PortOpen(portSetting)))then
        MessageDlg('Port Failed!',mtWarning,[mbOK],0);
    end;
    SetTextFont(FONT_B);

    AnsiStr := WideStringToAnsiString(memImpressao.Text,860);
    cTexto   := StringOfChar('-',54);            //5927 5856
    memImpressao.Lines.Add(cTexto);
    cTexto   := DM.cdsEmpresaNOME_FANTASIA.AsString;
    memImpressao.Lines.Add(cTexto);

    cTexto   := DM.cdsEmpresaRAZAO.AsString+' - Tel: '+DM.cdsEmpresaFONE.AsString;
    memImpressao.Lines.Add(cTexto);

    cTexto   := 'CNPJ: '+DM.cdsEmpresaCNPJ.AsString+' - Insc.: '+DM.cdsEmpresaINSC_EST.AsString;
    memImpressao.Lines.Add(cTexto);

    cTexto   := DM.cdsEmpresaENDERECO.AsString+' - '+DM.cdsEmpresaNOME_BAIRRO.AsString+' - '+DM.cdsEmpresaNOME_CIDADE.AsString;
    memImpressao.Lines.Add(cTexto);

    cTexto   := StringOfChar('-',54);
    memImpressao.Lines.Add(cTexto);
  end;

end;

procedure TfrmMenuPrinc.ManipulaExcecoes(Sender: TObject; E: Exception);
begin
  MessageDlg(E.Message, mtError, [mbOK], 0);
end;

procedure TfrmMenuPrinc.FormCreate(Sender: TObject);
var Cor: Array[1..3] of TColor;
begin
  Edit1.Text := IntToStr(Screen.Width);
  Edit2.Text := IntToStr(Screen.Height);

  Application.OnException := ManipulaExcecoes;
end;


procedure TfrmMenuPrinc.EntradaVeiculos1Click(Sender: TObject);
begin
   frmOperacao := TfrmOperacao.create(application);
   try
     frmMenuPrinc.WindowState := wsMinimized;

     frmOperacao.ShowModal
   finally
      FreeAndNil(frmOperacao);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.btnConsCaixaClick(Sender: TObject);
begin
  frmCaixaConsulta := TfrmCaixaConsulta.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmCaixaConsulta.ShowModal
  finally
    FreeAndNil(frmCaixaConsulta);
    frmMenuPrinc.WindowState := wsMaximized;
  end;

end;

procedure TfrmMenuPrinc.btnTipoOperacaoClick(Sender: TObject);
begin
  frmTipoOperacao := TfrmTipoOperacao.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmTipoOperacao.ShowModal
  finally
     FreeAndNil(frmTipoOperacao);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.TabeladePrecos1Click(Sender: TObject);
begin
   frmPreco := TfrmPreco.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmPreco.ShowModal
   finally
      FreeAndNil(frmPreco);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.Funcionrios1Click(Sender: TObject);
begin
  frmFuncionario := TfrmFuncionario.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmFuncionario.ShowModal
   finally
      FreeAndNil(frmFuncionario);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.EntradaseSaidasporData1Click(Sender: TObject);
begin
  frmRelacaoEntradasSaidas := TfrmRelacaoEntradasSaidas.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmRelacaoEntradasSaidas.ShowModal
  finally
     FreeAndNil(frmRelacaoEntradasSaidas);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.Mensalidades1Click(Sender: TObject);
begin
	p_Contas_a_Receber;
end;

procedure TfrmMenuPrinc.ClientesContratosePlacas1Click(Sender: TObject);
begin
  frmCliConPla := TfrmCliConPla.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmCliConPla.ShowModal
  finally
    FreeAndNil(frmCliConPla);
    frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.TiposdePagamentos1Click(Sender: TObject);
begin
   frmTipoPgto := TfrmTipoPgto.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmTipoPgto.ShowModal
   finally
      FreeAndNil(frmTipoPgto);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.PlanodeContas1Click(Sender: TObject);
begin
  frmPlanoContas := TfrmPlanoContas.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmPlanoContas.ShowModal
  finally
     FreeAndNil(frmPlanoContas);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.Fechar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrinc.pMonitorAcoes(int_CxOperador,
  int_Funcionario,int_Operacao: Integer; str_Acao, str_Placa: String);
begin
  f_Close_Open_CDS(DM.cdsMonitor);
  DM.cdsMonitor.Append;
  DM.cdsMonitorID_MONITOR.AsInteger        := SP_Chave_Primaria(QuotedStr('MONITOR')); 
  DM.cdsMonitorID_FUNCIONARIO.AsInteger    := int_Funcionario;
  DM.cdsMonitorID_CAIXA_OPERADOR.AsInteger := int_CxOperador;
  DM.cdsMonitorID_OPERACAO.AsInteger       := int_Operacao;
  DM.cdsMonitorACAO.AsString               := str_Acao;
  DM.cdsMonitorPLACA.AsString              := str_Placa;
  DM.cdsMonitorDATA_HORA.AsDateTime        := Date+Time;
  f_Commit(DM.dtsMonitor);
end;

procedure TfrmMenuPrinc.pTotalizacaoDiariaCaixa( int_ID_FUNCIONARIO_DATA_CAIXA: Integer);
var vldou_Total, vldou_Juros, vldou_Desc, vldou_Vl_Total, vldou_Venda_Vista,
    vldou_Entrada, vldou_Vl_Rec: Double;
    vls_Empresa, vlstr_DataI, vlstr_DataF , vlstr_M_C:String;
    vli_Soma, vli_Qtde, vli_Hist_Cre, vli_Hist_Dup, vli_Hist_Fun, vli_Hist_Ven, vli_QRL, vlint_ID_MOVIMENTACAO: Integer;
    vlwor_Dia, vlwor_Mes, vlwor_Ano:Word;

    Reg_Padrao:TReg_Padrao;
begin
  Reg_Padrao := frmMenuPrinc.CriaRegistroPadrao;
/////////////////////////////////////////////////////////////////////////////////////////////
// PROCURA NA FIN_HISTORICOS A DESCRICAO REC. CREDIARIO SENÃO ENCONTRAR CADASTRA-O //////////
/////////////////////////////////////////////////////////////////////////////////////////////
  DM.qryIDFuncDtCx.Close;
  DM.qryIDFuncDtCx.Params[0].AsInteger := int_ID_FUNCIONARIO_DATA_CAIXA;
  DM.qryIDFuncDtCx.Open;

  vlstr_DataI := f_data_americana(DM.qryIDFuncDtCxDATA_CAIXA.AsDateTime,'data')+' 00:00:00';

  vlstr_DataF := f_data_americana(DM.qryIDFuncDtCxDATA_FECHAMENTO.AsDateTime,'data')+' 23:59:59';

  DM.cdsMovDiariaCx.Params[0].AsInteger := 0;
  f_Close_Open_CDS(DM.cdsMovDiariaCx);

/////////////////////////////////////////////////////////////////////////////////////
// PROCURA NA FIN_HISTORICOS A DESCRICAO FUNDO DE CAIXA SENÃO ENCONTRAR CADASTRA-O //
/////////////////////////////////////////////////////////////////////////////////////

  DMCons.cdsFundoCX.Params[0].AsInteger := vgint_IDCaixaOperador;
  f_Close_Open_CDS(DMCons.cdsFundoCX);
  DMCons.cdsFundoCX.Last;
  vgdou_Saldo_Anterior := StrToFloat((FloatToStrF((DMCons.cdsFundoCXVALOR.AsFloat),ffFixed,18,2)));

  //VERIFICA SE HA DESCRICAO COM O SALDO ANTERIOR AQUI TAMBEM
  p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
  ' select m.id_movimentacao from MOVIMENTACAO m'+
  ' where               (m.descricao='+quotedstr('SALDO ANTERIOR')+')'+
  ' and         (m.id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+')'+
  ' and              (m.data between '+quotedstr(vlstr_DataI)+
                               ' and '+quotedstr(vlstr_DataF)+')'+
  ' and (m.id_funcionario_data_caixa='+QuotedStr(DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');
  if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
  begin
    if (f_Close_Open_CDS(DMCons.cdsFundoCX)=0) then
    begin
       frmValorPagar := TfrmValorPagar.Create(Application);
       try
         frmValorPagar.ShowModal;
       finally
         vgdou_Saldo_Anterior := frmValorPagar.EDT_Valor_Pagar.Value;
         FreeAndNil(frmValorPagar);


         DM.cdsFundDtCx.Append;
         DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger := 0;
         DM.cdsFundDtCxID_FUNCIONARIO.AsInteger            := vgint_IDFuncionario;
         DM.cdsFundDtCxID_CAIXA_OPERADOR.AsInteger         := vgint_IDCaixaOperador;
         DM.cdsFundDtCxDATA_CAIXA.AsDateTime               := Date - 1;
         DM.cdsFundDtCxDATA_FECHAMENTO.AsDateTime          := Date - 1;
         DM.cdsFundDtCxVALOR.AsFloat                       := vgdou_Saldo_Anterior;
         DM.cdsFundDtCxCAIXA_FECHADO.AsString              := 'SIM';
         f_Commit(DM.dtsFundDtCx);
       end;
    end
    else
    begin
      DMCons.cdsFundoCX.Last;
      vgdou_Saldo_Anterior := DMCons.cdsFundoCXVALOR.AsFloat;
    end;

    // cria o registro na movimentacao o SALDO ANTERIOR com o plano de contas FUNDO DE CAIXA
    DM.cdsMovDiariaCx.Append;
    DM.cdsMovDiariaCxID_MOVIMENTACAO.AsInteger   := SP_Chave_Primaria(QuotedStr('MOVIMENTACAO')); //f_Chave_Primaria('MOVIMENTACAO'); //f_Auto_Incremento_Manual('MOVIMENTACAO','ID_MOVIMENTACAO');
    DM.cdsMovDiariaCxID_FUNCIONARIO_DATA_CAIXA.AsInteger   := int_ID_FUNCIONARIO_DATA_CAIXA;
    DM.cdsMovDiariaCxDATA_CAIXA.AsDateTime       := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime;
    DM.cdsMovDiariaCxDESCRICAO.AsString          := 'SALDO ANTERIOR';
    DM.cdsMovDiariaCxFLAG.AsString               := 'SA';
    DM.cdsMovDiariaCxID_PLANO_DE_CONTA.AsInteger :=  Reg_Padrao.int_FundoCaixa;
    DM.cdsMovDiariaCxCREDITO_DEBITO.AsString     := 'CREDITO';
    DM.cdsMovDiariaCxNUMERO.AsInteger            := 1;
    DM.cdsMovDiariaCxQTDE.AsInteger              := 0;
    DM.cdsMovDiariaCxDATA.AsDateTime             := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime+Time;
    DM.cdsMovDiariaCxVALOR.AsFloat               := vgdou_Saldo_Anterior;
    DM.cdsMovDiariaCxID_FUNCIONARIO.AsInteger    := vgint_IDFuncionario;
    DM.cdsMovDiariaCxID_CAIXA_OPERADOR.AsInteger := vgint_IDCaixaOperador;
    f_Commit(DM.dtsMovDiariaCx);
    f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
  end;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// filtra os pagamentos na tabela caixa com tipo=0
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // cria o registro na movimentacao o SALDO ANTERIOR com o plano de contas FUNDO DE CAIXA
  DMCx.cdsDistinctPgto.Params[0].AsString  := vlstr_DataI;
  DMCx.cdsDistinctPgto.Params[1].AsString  := vlstr_DataF;
  DMCx.cdsDistinctPgto.Params[2].AsInteger := vgint_IDCaixaOperador;
  DMCx.cdsDistinctPgto.Params[3].AsString  := 'SIM';
  f_Close_Open_CDS(DMCx.cdsDistinctPgto);

  DMCx.cdsDistinctPgto.First;
  while not DMCx.cdsDistinctPgto.Eof do
  begin
    Application.ProcessMessages;

    DMCx.cdsSomaDinheiroCx.Params[0].AsString  := vlstr_DataI;
    DMCx.cdsSomaDinheiroCx.Params[1].AsString  := vlstr_DataF;
    DMCx.cdsSomaDinheiroCx.Params[2].AsInteger := vgint_IDCaixaOperador;
    DMCx.cdsSomaDinheiroCx.Params[3].AsString  := 'SIM';
    DMCx.cdsSomaDinheiroCx.Params[4].AsInteger := DMCx.cdsDistinctPgtoID_TIPO_PGTO.AsInteger;
    DMCx.cdsSomaDinheiroCx.Params[5].AsInteger := 0;
    DMCx.cdsSomaDinheiroCx.Params[6].AsInteger := DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
    f_Close_Open_CDS(DMCx.cdsSomaDinheiroCx);


  // VERIFICA SE HA O PLANO DE CONTA AVULSO
    //VERIFICA SE HA DESCRICAO COM O SALDO ANTERIOR AQUI TAMBEM
    p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
    ' select m.id_movimentacao from MOVIMENTACAO m'+
    ' where               (m.descricao='+QuotedStr('AVULSO')+')'+
    ' and               (m.complemento='+quotedstr(DMCx.cdsDistinctPgtoNOME_TIPO_PGTO.AsString)+')'+
    ' and         (m.id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+')'+
    ' and              (m.data between '+QuotedStr(vlstr_DataI)+
                                 ' and '+QuotedStr(vlstr_DataF)+')'+
    ' and (m.id_funcionario_data_caixa='+QuotedStr(DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');
    if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
    begin
      DM.cdsMovDiariaCx.Append;
      DM.cdsMovDiariaCxID_MOVIMENTACAO.AsInteger   := SP_Chave_Primaria(QuotedStr('MOVIMENTACAO'));
      DM.cdsMovDiariaCxID_FUNCIONARIO_DATA_CAIXA.AsInteger   := int_ID_FUNCIONARIO_DATA_CAIXA;
      DM.cdsMovDiariaCxDATA_CAIXA.AsDateTime       := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime;
      DM.cdsMovDiariaCxDESCRICAO.AsString          := 'AVULSO';
      DM.cdsMovDiariaCxID_PLANO_DE_CONTA.AsInteger := Reg_Padrao.int_Avulso;
      DM.cdsMovDiariaCxCREDITO_DEBITO.AsString     := 'CREDITO';
      DM.cdsMovDiariaCxCOMPLEMENTO.AsString        := DMCx.cdsDistinctPgtoNOME_TIPO_PGTO.AsString;
      DM.cdsMovDiariaCxNUMERO.AsInteger            := DMCons.cdsMovDiariaCx.RecordCount + 1;
      DM.cdsMovDiariaCxQTDE.AsInteger              := DMCons.cdsMovDiariaCx.RecordCount + 1;
      DM.cdsMovDiariaCxDATA.AsDateTime             := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime+Time;
      DM.cdsMovDiariaCxVALOR_ENT.AsFloat           := DMCx.cdsSomaDinheiroCxVT.AsFloat;
      DM.cdsMovDiariaCxID_FUNCIONARIO.AsInteger    := vgint_IDFuncionario;
      DM.cdsMovDiariaCxID_CAIXA_OPERADOR.AsInteger := vgint_IDCaixaOperador;
      f_Commit(DM.dtsMovDiariaCx);
      f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
    end
    else
    begin
      vlint_ID_MOVIMENTACAO := DM_Aux.CDS_Aux_1.FieldByName('id_movimentacao').AsInteger;
      DM.cdsMovDiariaCx.Params[0].AsInteger := vlint_ID_MOVIMENTACAO;
      f_Close_Open_CDS(DM.cdsMovDiariaCx);

      DM.cdsMovDiariaCx.Edit;
      DM.cdsMovDiariaCxVALOR_ENT.AsFloat := DMCx.cdsSomaDinheiroCxVT.AsFloat;
      f_Commit(DM.dtsMovDiariaCx);
      f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
    end;
    DMCx.cdsDistinctPgto.Next;
  end;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// filtra os pagamentos na tabela caixa com tipo=1
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // cria o registro na movimentacao o SALDO ANTERIOR com o plano de contas FUNDO DE CAIXA


  if f_Leitura_Ini(ExtractFilePath(Application.ExeName)+'ini\Senha','Configuracao','chkLancaServicos')=1 then
  begin
     DMCx.cdsDistinctPgto.Params[0].AsString  := vlstr_DataI;
     DMCx.cdsDistinctPgto.Params[1].AsString  := vlstr_DataF;
     DMCx.cdsDistinctPgto.Params[2].AsInteger := vgint_IDCaixaOperador;
     DMCx.cdsDistinctPgto.Params[3].AsString  := 'SIM';
     f_Close_Open_CDS(DMCx.cdsDistinctPgto);

     DMCx.cdsDistinctPgto.First;
     while not DMCx.cdsDistinctPgto.Eof do
     begin
       Application.ProcessMessages;

       DMCx.cdsSomaDinheiroCx.Params[0].AsString  := vlstr_DataI;
       DMCx.cdsSomaDinheiroCx.Params[1].AsString  := vlstr_DataF;
       DMCx.cdsSomaDinheiroCx.Params[2].AsInteger := vgint_IDCaixaOperador;
       DMCx.cdsSomaDinheiroCx.Params[3].AsString  := 'SIM';
       DMCx.cdsSomaDinheiroCx.Params[4].AsInteger := DMCx.cdsDistinctPgtoID_TIPO_PGTO.AsInteger;
       DMCx.cdsSomaDinheiroCx.Params[5].AsInteger := 1;
       DMCx.cdsSomaDinheiroCx.Params[6].AsInteger := DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
       f_Close_Open_CDS(DMCx.cdsSomaDinheiroCx);


     // VERIFICA SE HA O PLANO DE CONTA AVULSO
       //VERIFICA SE HA DESCRICAO COM O SALDO ANTERIOR AQUI TAMBEM
       p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
       ' select m.id_movimentacao from MOVIMENTACAO m'+
       ' where               (m.descricao='+QuotedStr('AVULSO')+')'+
       ' and               (m.complemento='+quotedstr(DMCx.cdsDistinctPgtoNOME_TIPO_PGTO.AsString+'/SERV.')+')'+
       ' and         (m.id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+')'+
       ' and              (m.data between '+QuotedStr(vlstr_DataI)+
                                    ' and '+QuotedStr(vlstr_DataF)+')'+
       ' and (m.id_funcionario_data_caixa='+QuotedStr(DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');
       if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
       begin
         DM.cdsMovDiariaCx.Append;
         DM.cdsMovDiariaCxID_MOVIMENTACAO.AsInteger   := SP_Chave_Primaria(QuotedStr('MOVIMENTACAO'));
         DM.cdsMovDiariaCxID_FUNCIONARIO_DATA_CAIXA.AsInteger   := int_ID_FUNCIONARIO_DATA_CAIXA;
         DM.cdsMovDiariaCxDATA_CAIXA.AsDateTime       := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime;
         DM.cdsMovDiariaCxDESCRICAO.AsString          := 'AVULSO';
         DM.cdsMovDiariaCxID_PLANO_DE_CONTA.AsInteger := Reg_Padrao.int_Avulso;
         DM.cdsMovDiariaCxCREDITO_DEBITO.AsString     := 'CREDITO';
         DM.cdsMovDiariaCxCOMPLEMENTO.AsString        := DMCx.cdsDistinctPgtoNOME_TIPO_PGTO.AsString+'/SERV.';
         DM.cdsMovDiariaCxNUMERO.AsInteger            := DMCons.cdsMovDiariaCx.RecordCount + 1;
         DM.cdsMovDiariaCxQTDE.AsInteger              := DMCons.cdsMovDiariaCx.RecordCount + 1;
         DM.cdsMovDiariaCxDATA.AsDateTime             := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime+Time;
         DM.cdsMovDiariaCxVALOR_ENT.AsFloat           := DMCx.cdsSomaDinheiroCxVT.AsFloat;
         DM.cdsMovDiariaCxID_FUNCIONARIO.AsInteger    := vgint_IDFuncionario;
         DM.cdsMovDiariaCxID_CAIXA_OPERADOR.AsInteger := vgint_IDCaixaOperador;
         f_Commit(DM.dtsMovDiariaCx);
         f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
       end
       else
       begin
         vlint_ID_MOVIMENTACAO := DM_Aux.CDS_Aux_1.FieldByName('id_movimentacao').AsInteger;
         DM.cdsMovDiariaCx.Params[0].AsInteger := vlint_ID_MOVIMENTACAO;
         f_Close_Open_CDS(DM.cdsMovDiariaCx);

         DM.cdsMovDiariaCx.Edit;
         DM.cdsMovDiariaCxVALOR_ENT.AsFloat := DMCx.cdsSomaDinheiroCxVT.AsFloat;
         f_Commit(DM.dtsMovDiariaCx);
         f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
       end;
       DMCx.cdsDistinctPgto.Next;
     end;
  end;
/////////////////////////////////////////////////////////////////////////
//                           MENSALISTAS                               //
/////////////////////////////////////////////////////////////////////////

  DMCx.cdsDistinctMensalidade.Params[0].AsString  := vlstr_DataI;
  DMCx.cdsDistinctMensalidade.Params[1].AsString  := vlstr_DataF;
  DMCx.cdsDistinctMensalidade.Params[2].AsInteger := vgint_IDCaixaOperador;
  DMCx.cdsDistinctMensalidade.Params[3].AsString  := 'SIM';
  f_Close_Open_CDS(DMCx.cdsDistinctMensalidade);

  f_Close_Open_CDS(DM.cdsMensa);
  f_Close_Open_CDS(DM.cdsEmpresa);
  DMCx.cdsDistinctMensalidade.First;
  while not DMCx.cdsDistinctMensalidade.Eof do
  begin
    Application.ProcessMessages;

    DMCx.cdsSomaMensalidade.Params[0].AsString  := vlstr_DataI;
    DMCx.cdsSomaMensalidade.Params[1].AsString  := vlstr_DataF;
    DMCx.cdsSomaMensalidade.Params[2].AsInteger := vgint_IDCaixaOperador;
    DMCx.cdsSomaMensalidade.Params[3].AsString  := 'SIM';
    DMCx.cdsSomaMensalidade.Params[4].AsInteger := DMCx.cdsDistinctMensalidadeCODIGO.AsInteger;
    f_Close_Open_CDS(DMCx.cdsSomaMensalidade);

    DM.cdsCliente.Params[0].AsInteger := DMCx.cdsDistinctMensalidadeCODIGO.AsInteger;
    f_Close_Open_CDS(DM.cdsCliente);

    if (DM.cdsClienteTIPO_CONTRATO.AsString = 'M') then
      vlstr_M_C := Copy(TrimLeft(DM.cdsClienteNOME_CLIENTE.AsString),1,30)+' - MENSAL'
    else
    if (DM.cdsClienteTIPO_CONTRATO.AsString = 'C') then
      vlstr_M_C := Copy(TrimLeft(DM.cdsClienteNOME_CLIENTE.AsString),1,30)+' - CONVENIO';
   // VERIFICA SE HA O PLANO DE CONTA AVULSO
    p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
    ' select m.id_movimentacao from MOVIMENTACAO m'+
    ' where               (m.descricao='+quotedstr('MENSALISTA')+')'+
    ' and               (m.complemento='+quotedstr(vlstr_M_C)+')'+
    ' and         (m.id_caixa_operador='+QuotedStr(IntToStr(vgint_IDCaixaOperador))+')'+
    ' and              (m.data between '+quotedstr(vlstr_DataI)+
                                 ' and '+quotedstr(vlstr_DataF)+')'+
    ' and (m.id_funcionario_data_caixa='+QuotedStr(DM.qryIDFuncDtCxID_FUNCIONARIO_DATA_CAIXA.AsString)+')','');
    if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
    begin
      DM.cdsMovDiariaCx.Append;
      DM.cdsMovDiariaCxID_MOVIMENTACAO.AsInteger   := SP_Chave_Primaria(QuotedStr('MOVIMENTACAO'));
      DM.cdsMovDiariaCxID_FUNCIONARIO_DATA_CAIXA.AsInteger   := int_ID_FUNCIONARIO_DATA_CAIXA;

      DM.cdsMovDiariaCxDATA_CAIXA.AsDateTime       := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime;
      DM.cdsMovDiariaCxDESCRICAO.AsString          := 'MENSALISTA';
      DM.cdsMovDiariaCxCOMPLEMENTO.AsString        := vlstr_M_C;
      DM.cdsMovDiariaCxID_PLANO_DE_CONTA.AsInteger := Reg_Padrao.int_Mensalista;
      DM.cdsMovDiariaCxCREDITO_DEBITO.AsString     := 'CREDITO';
      DM.cdsMovDiariaCxNUMERO.AsInteger            := DMCons.cdsMovDiariaCx.RecordCount + 1;;
      DM.cdsMovDiariaCxQTDE.AsInteger              := DMCons.cdsMovDiariaCx.RecordCount + 1;;
      DM.cdsMovDiariaCxDATA.AsDateTime             := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime+Time;
      DM.cdsMovDiariaCxVALOR_ENT.AsFloat           := DMCx.cdsSomaMensalidadeVALOR.AsFloat;
      DM.cdsMovDiariaCxID_FUNCIONARIO.AsInteger    := vgint_IDFuncionario;
      DM.cdsMovDiariaCxID_CAIXA_OPERADOR.AsInteger := vgint_IDCaixaOperador;
      f_Commit(DM.dtsMovDiariaCx);
      f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
    end
    else
    begin
      vlint_ID_MOVIMENTACAO := DM_Aux.CDS_Aux_1.FieldByName('id_movimentacao').AsInteger;
      DM.cdsMovDiariaCx.Params[0].AsInteger := vlint_ID_MOVIMENTACAO;
      f_Close_Open_CDS(DM.cdsMovDiariaCx);

      DM.cdsMovDiariaCx.Edit;
      DM.cdsMovDiariaCxVALOR_ENT.AsFloat := DMCx.cdsSomaMensalidadeVALOR.AsFloat;
      f_Commit(DM.dtsMovDiariaCx);
      f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
    end;
    DMCx.cdsDistinctMensalidade.Next;
  end;



  
  DM.cdsMovDiariaCx.Append;
  DM.cdsMovDiariaCxID_MOVIMENTACAO.AsInteger   := SP_Chave_Primaria(QuotedStr('MOVIMENTACAO'));
  DM.cdsMovDiariaCxID_FUNCIONARIO.AsInteger    := DMCons.cdsFundDtCxID_FUNCIONARIO.AsInteger;
  DM.cdsMovDiariaCxID_CAIXA_OPERADOR.AsInteger := DMCons.cdsFundDtCxID_CAIXA_OPERADOR.AsInteger;
  DM.cdsMovDiariaCxVALOR_ENT.AsFloat           := 0;
  DM.cdsMovDiariaCxVALOR_SAI.AsFloat           := 0;
  DM.cdsMovDiariaCxVALOR.AsFloat               := 0;
  DM.cdsMovDiariaCxDATA.AsDateTime             := DMCons.cdsFundDtCxDATA_CAIXA.AsDateTime+Time;
  DM.cdsMovDiariaCxDESCRICAO.AsString          := 'SAIDA CAIXA/SANGRIA';
  DM.cdsMovDiariaCxCOMPLEMENTO.AsString        := 'FECHAMENTO';
  DM.cdsMovDiariaCxFLAG.AsString               := 'SC';
  DM.cdsMovDiariaCxCREDITO_DEBITO.AsString     := 'DEBITO';
  DM.cdsMovDiariaCxNUMERO.AsInteger := DMCons.cdsMovDiaria.RecordCount + 1;
  DM.cdsMovDiariaCx.Params[0].AsInteger := 0;
  f_Close_Open_CDS(DM.cdsMovDiariaCx);
  f_Close_Open_CDS(DMCons.cdsMovDiariaCx);
end;

function TfrmMenuPrinc.CriaRegistroPadrao: TReg_Padrao;
begin
  // cria registro fundo de caixa na tabela plano de contas
  DMCons.cdsPlanoContaDescr.Params[0].AsString := 'FUNDO DE CAIXA';
  if (f_Close_Open_CDS(DMCons.cdsPlanoContaDescr)=0) then
  begin
      Result.int_FundoCaixa := f_Chave_Primaria('PLANO_DE_CONTA');
      DM.Conexao.ExecuteDirect(
      ' insert into PLANO_DE_CONTA (id_plano_de_conta, nro_plano_de_conta, nome_plano_de_conta, credito_debito, fixo_variavel)'+
      ' VALUES (gen_id(GEN_PLANO_DE_CONTA_ID,1),'
                 +'Null'+','
                 +QuotedStr('FUNDO DE CAIXA')+','
                 +QuotedStr('DEBITO')+','
                 +QuotedStr('VARIAVEL')+')');
  end
  else
    Result.int_FundoCaixa := DMCons.cdsPlanoContaDescrID_PLANO_DE_CONTA.AsInteger;

  // cria registro fundo de caixa na tabela plano de contas
  DMCons.cdsPlanoContaDescr.Params[0].AsString := 'AVULSO';
  if (f_Close_Open_CDS(DMCons.cdsPlanoContaDescr)=0) then
  begin
    Result.int_Avulso := f_Chave_Primaria('PLANO_DE_CONTA');
    ' insert into PLANO_DE_CONTA (id_plano_de_conta, nro_plano_de_conta, nome_plano_de_conta, credito_debito, fixo_variavel)'+
      ' VALUES (gen_id(GEN_PLANO_DE_CONTA_ID,1),'
               +'Null'+','
               +QuotedStr('AVULSO')+','
               +QuotedStr('CREDITO')+','
               +QuotedStr('VARIAVEL')+')');
  end
  else
    Result.int_Avulso := DMCons.cdsPlanoContaDescrID_PLANO_DE_CONTA.AsInteger;

  // cria registro fundo de caixa na tabela plano de contas
  DMCons.cdsPlanoContaDescr.Params[0].AsString := 'MENSALISTA';
  if (f_Close_Open_CDS(DMCons.cdsPlanoContaDescr)=0) then
  begin
    Result.int_Mensalista := f_Chave_Primaria('PLANO_DE_CONTA');
    DM.Conexao.ExecuteDirect(
    ' insert into PLANO_DE_CONTA (id_plano_de_conta, nro_plano_de_conta, nome_plano_de_conta, credito_debito, fixo_variavel)'+
      ' VALUES (gen_id(GEN_PLANO_DE_CONTA_ID,1),'
               +'Null'+','
               +QuotedStr('MENSALISTA')+','
               +QuotedStr('CREDITO')+','
               +QuotedStr('VARIAVEL')+')');
  end
  else
    Result.int_Mensalista := DMCons.cdsPlanoContaDescrID_PLANO_DE_CONTA.AsInteger;
end;

procedure TfrmMenuPrinc.HistoricoVeiculo1Click(Sender: TObject);
begin
  frmHistoricoPlaca := TfrmHistoricoPlaca.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmHistoricoPlaca.ShowModal
  finally
     FreeAndNil(frmHistoricoPlaca);
     frmMenuPrinc.WindowState := wsMaximized;
  end;

end;

procedure TfrmMenuPrinc.Button1Click(Sender: TObject);
begin
  if ValidaData(StrToInt(edtAno.Text),StrToInt(edtMes.Text),StrToInt(edtDia.Text)) then
    ShowMessage('Data Válida')
  else
    ShowMessage('Data Inválida');
end;

procedure TfrmMenuPrinc.Fornecedores1Click(Sender: TObject);
begin
  frmFornecedor := TfrmFornecedor.Create(Application);
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmFornecedor.ShowModal
  finally
    FreeAndNil(frmFornecedor);
    frmMenuPrinc.WindowState := wsMaximized;
  end;
end;

procedure TfrmMenuPrinc.Despesas1Click(Sender: TObject);
begin
  frmControleNFiscal := TfrmControleNFiscal.Create(Application);
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmControleNFiscal.ShowModal
  finally
    FreeAndNil(frmControleNFiscal);
    frmMenuPrinc.WindowState := wsMaximized;
  end;

end;

function TfrmMenuPrinc.MudaDiaData(pfdat_Data: TDate;
  pfint_Dia: Smallint): TDate;
var Year,MOnth,Day:Word;
begin
  DecodeDate(pfdat_Data,Year,Month,Day);
  try
    pfdat_Data := EncodeDate(Year,Month,pfint_Dia);
  except
    pfdat_Data := EncodeDate(Year,Month,5);
  end;
  Result := pfdat_Data;
end;

procedure TfrmMenuPrinc.Servicos1Click(Sender: TObject);
begin
   frmServico := TfrmServico.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmServico.ShowModal
   finally
      FreeAndNil(frmServico);
      frmMenuPrinc.WindowState := wsMaximized;
   end;

end;

procedure TfrmMenuPrinc.Graficos1Click(Sender: TObject);
begin
   frmGrafDiario := TfrmGrafDiario.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmGrafDiario.ShowModal
   finally
      FreeAndNil(frmGrafDiario);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.ListagemdasRPS1Click(Sender: TObject);
begin
  frmListaCarrosRPS := TfrmListaCarrosRPS.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmListaCarrosRPS.ShowModal
  finally
     FreeAndNil(frmListaCarrosRPS);
     frmMenuPrinc.WindowState := wsMaximized;
  end;

end;

procedure TfrmMenuPrinc.JumpTo(const aAdress: String);
var
buffer: String;
begin
  buffer := 'http://' + aAdress;
  ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMenuPrinc.FormDestroy(Sender: TObject);
begin
  p_grava_leitura_ini('grava',ExtractFilePath(Application.ExeName)+'ini\Senha',1,Self);

  try
    if (DM.cdsRegistroID_REGISTRO.AsInteger=0) then
    begin
      DM.cdsRegistro.Append;
      DM.cdsRegistroID_REGISTRO.AsInteger := 1;
      f_Commit(DM.dtsRegistro);
    end;
    DM.cdsRegistro.Edit;
    DM.cdsRegistroLIBERA_SISTEMA.AsInteger := 0;
    f_Commit(DM.dtsRegistro);
  except
  end;  
end;


procedure TfrmMenuPrinc.MigracaodeDados1Click(Sender: TObject);
begin
   frmMigracaoDados := TfrmMigracaoDados.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmMigracaoDados.ShowModal
   finally
      FreeAndNil(frmMigracaoDados);
      frmMenuPrinc.WindowState := wsMaximized;
   end;

end;

procedure TfrmMenuPrinc.RzBitBtn1Click(Sender: TObject);
begin
  frmListaCarrosRPS := TfrmListaCarrosRPS.create ( application );
  try
    frmMenuPrinc.WindowState := wsMinimized;
    frmListaCarrosRPS.ShowModal
  finally
     FreeAndNil(frmListaCarrosRPS);
     frmMenuPrinc.WindowState := wsMaximized;
  end;
end;


procedure TfrmMenuPrinc.p_Gerar_RPS_Cartao(pfdat_Inicial,
  pfdat_Final: TDateTime);
var
   vlstr_Data_I, vlstr_Data_F:String;
   vlint_IDConvenio:Integer;
   Present: TDateTime;
   Year, Month, Day, Hour, Min, Sec, MSec: Word;
   vlint_DiaVenc:Integer;
   vldou_Total:Double;
begin
  //verifica se o tipo pgtode nome CONVENIO esta cadastrado
  p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
  'select ID_TIPO_PGTO from tipo_pgto t where t.nome_tipo_pgto like '+ QuotedStr('CARTAO RPS%'),'');
  if (f_Close_Open_CDS(DM_Aux.CDS_Aux_1)=0) then
  begin
    f_Close_Open_CDS(DM.cdsTipoPgto);
    DM.cdsTipoPgto.Append;
    DM.cdsTipoPgtoID_TIPO_PGTO.AsInteger := SP_Chave_Primaria(QuotedStr('TIPO_PGTO'));
    DM.cdsTipoPgtoNOME_TIPO_PGTO.AsString:= 'CARTAO RPS';
    DM.cdsTipoPgtoSINAL.AsString         := '+';
    f_Commit(DM.dtsTipoPgto);

    vlint_IDConvenio    := DM.cdsTipoPgtoID_TIPO_PGTO.AsInteger;
  end
  else
    vlint_IDConvenio    := DM_Aux.CDS_Aux_1.FieldByName('ID_TIPO_PGTO').AsInteger;

   vlstr_Data_I := FormatDateTime('mm/dd/yyyy',pfdat_Inicial)+ ' 00:00:00';
   vlstr_Data_F := FormatDateTime('mm/dd/yyyy',pfdat_Final)  + ' 23:59:59';

   DMCx.cdsCartaoRPS.Params[0].AsString  := 'CARTAO%';
   DMCx.cdsCartaoRPS.Params[1].AsString  := vlstr_Data_I;
   DMCx.cdsCartaoRPS.Params[2].AsString  := vlstr_Data_F;
   DMCx.cdsCartaoRPS.Params[3].AsInteger := vgint_IDCaixaOperador;
   DMCx.cdsCartaoRPS.Params[4].AsString  := 'SIM';
   f_Close_Open_CDS(DMCx.cdsCartaoRPS);

   vldou_Total := DMCx.cdsCartaoRPSSUM.AsFloat;

   while (vldou_Total >=195) do
      begin
         f_Close_Open_CDS(DM.cdsOperacaoCli);
         DM.cdsOperacaoCli.Append;
         DM.cdsOperacaoCliID_OPERACAO_CLIENTE.AsInteger := SP_Chave_Primaria(QuotedStr('OPERACAO_CLIENTE'));
         DM.cdsOperacaoCliID_LIGACAO.AsInteger          := DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
         DM.cdsOperacaoCliID_MENSALIDADE.AsInteger      := DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
         DM.cdsOperacaoCliID_CLIENTE.AsInteger          := 1;
         DM.cdsOperacaoCliDATA_EMISSAO.AsDateTime       := DM.cdsFundDtCxDATA_CAIXA.AsDateTime;
         DM.cdsOperacaoCliPLACA.AsString                := 'CAIXA';
         DM.cdsOperacaoCliVALOR.AsFloat                 := 195; 
         DM.cdsOperacaoCliID_OPERACAO.AsInteger         := 0;
         DM.cdsOperacaoCliTIPO.AsString                 := 'C';
         f_Commit(DM.dtsOperacaoCli);
      end;
      vldou_Total := vldou_Total - 195;

   // aqui cria um registro para RPS com valor restante do total de cartoes.

   if (vldou_Total > 0) then
   begin
      f_Close_Open_CDS(DM.cdsOperacaoCli);
      DM.cdsOperacaoCli.Append;
      DM.cdsOperacaoCliID_OPERACAO_CLIENTE.AsInteger := SP_Chave_Primaria(QuotedStr('OPERACAO_CLIENTE'));
      DM.cdsOperacaoCliID_LIGACAO.AsInteger          := DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
      DM.cdsOperacaoCliID_MENSALIDADE.AsInteger      := DM.cdsFundDtCxID_FUNCIONARIO_DATA_CAIXA.AsInteger;
      DM.cdsOperacaoCliID_CLIENTE.AsInteger          := 1;
      DM.cdsOperacaoCliDATA_EMISSAO.AsDateTime       := DM.cdsFundDtCxDATA_CAIXA.AsDateTime;
      DM.cdsOperacaoCliPLACA.AsString                := 'CAIXA';
      DM.cdsOperacaoCliVALOR.AsFloat                 := vldou_Total;
      DM.cdsOperacaoCliID_OPERACAO.AsInteger         := 0;
      DM.cdsOperacaoCliTIPO.AsString                 := 'C';
      f_Commit(DM.dtsOperacaoCli);
   end;
end;



function TfrmMenuPrinc.fRetornaGenerator(table: String): String;
begin
   p_Exec_Open_QRY(DM_Aux.QRY_Aux_1,
   'select gen_id(gen_'+table+'_id,0) from rdb$database','');
   f_Close_Open_CDS(DM_Aux.CDS_Aux_1);
   Result := DM_Aux.CDS_Aux_1.FieldByName('gen_id').AsString;
end;

procedure TfrmMenuPrinc.p_Contas_a_Receber;
begin
   frmMensalidade := TfrmMensalidade.create ( application );
   try
   	if (not Assigned(frmOperacao)) then
	      frmMenuPrinc.WindowState := wsMinimized;
      frmMensalidade.ShowModal
   finally
      FreeAndNil(frmMensalidade);
	   if vgint_Cliente_Chama <> 0 then
      else
   	if (not Assigned(frmOperacao)) then
	      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.btnProdutosClick(Sender: TObject);
begin
   frmProduto := TfrmProduto.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmProduto.ShowModal
   finally
      FreeAndNil(frmProduto);
      frmMenuPrinc.WindowState := wsMaximized;
   end;

end;

procedure TfrmMenuPrinc.btnPedidosClick(Sender: TObject);
begin
   frmLanctoPedidos := TfrmLanctoPedidos.create ( application );
   try
     frmMenuPrinc.WindowState := wsMinimized;
     frmLanctoPedidos.ShowModal
   finally
      FreeAndNil(frmLanctoPedidos);
      frmMenuPrinc.WindowState := wsMaximized;
   end;
end;

procedure TfrmMenuPrinc.RzBitBtn2Click(Sender: TObject);
begin
   frmLanctoServicos := TfrmLanctoServicos.create ( application );
   try
    frmLanctoServicos.ShowModal
   finally
     FreeAndNil(frmLanctoServicos);
   end;

end;


procedure TfrmMenuPrinc.pRodapePadraoImpressao;
var cTexto:String;
		iRetorno:Integer;
    AnsiStr:AnsiString;
    errNo :Integer;
    modelSetting:string;
    portSetting:string;
begin
	if (vgint_TipoImp = 0) then
  begin
    iRetorno := BematechTX( pchar( cTexto ) );

    iRetorno := AcionaGuilhotina(1);

    iRetorno := FechaPorta();
  end
  else
	if (vgint_TipoImp = 1) then
  begin
    AnsiStr := WideStringToAnsiString(memImpressao.Text,860);
    PrintText(AnsiStr);
    CutPaper(FULL_CUT,10);
  end;
end;


procedure TfrmMenuPrinc.FormDblClick(Sender: TObject);
begin
  memImpressao.Visible := not(memImpressao.Visible);
end;


function TfrmMenuPrinc.mensagem(corpo: String): integer;
var
  mensagem:TForm;
begin
  mensagem:= CreateMessageDialog('''+corpo + ''', mtConfirmation, [mbYes, mbNo]);
  (mensagem.FindComponent('YES') as TButton).Caption := 'Sim';
  (mensagem.FindComponent('NO') as TButton).Caption := 'Não';
  result:= mensagem.ShowModal;
end;

end.


