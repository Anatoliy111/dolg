// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://turbosms.in.ua/api/wsdl.html
//  >Import : http://turbosms.in.ua/api/wsdl.html>0
// Encoding : utf-8
// Version  : 1.0
// (09.02.2019 11:07:08 - - $Rev: 86412 $)
// ************************************************************************ //

unit wsdl;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]


  ArrayOfString = array of string;              { "http://turbosms.in.ua/api/Turbo"[GblCplx] }

  // ************************************************************************ //
  // Namespace : http://turbosms.in.ua/api/Turbo
  // soapAction: http://turbosms.in.ua/api/Turbo/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServiceSoap
  // service   : Service
  // port      : ServiceSoap
  // URL       : http://turbosms.in.ua/api/soap.html
  // ************************************************************************ //
  ServiceSoap = interface(IInvokable)
  ['{493AC33F-F436-EAAF-A5F3-6273C9D8879E}']
    function  Auth(const login: string; const password: string): string; stdcall;
    function  GetCreditBalance: string; stdcall;
    function  SendSMS(const sender: string; const destination: string; const text: string; const wappush: string): ArrayOfString; stdcall;
    function  GetNewMessages: ArrayOfString; stdcall;
    function  GetMessageStatus(const MessageId: string): string; stdcall;
  end;

function GetServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServiceSoap;


implementation
  uses System.SysUtils;

function GetServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServiceSoap;
const
  defWSDL = 'http://turbosms.in.ua/api/wsdl.html';
  defURL  = 'http://turbosms.in.ua/api/soap.html';
  defSvc  = 'Service';
  defPrt  = 'ServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { ServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(ServiceSoap), 'http://turbosms.in.ua/api/Turbo', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServiceSoap), 'http://turbosms.in.ua/api/Turbo/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServiceSoap), ioDocument);
  { ServiceSoap.Auth }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServiceSoap), 'Auth', '',
                                 '[ReturnName="AuthResult"]', IS_OPTN);
  { ServiceSoap.GetCreditBalance }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServiceSoap), 'GetCreditBalance', '',
                                 '[ReturnName="GetCreditBalanceResult"]', IS_OPTN);
  { ServiceSoap.SendSMS }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServiceSoap), 'SendSMS', '',
                                 '[ReturnName="SendSMSResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(ServiceSoap), 'SendSMS', 'SendSMSResult', '',
                                '[ArrayItemName="ResultArray"]');
  { ServiceSoap.GetNewMessages }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServiceSoap), 'GetNewMessages', '',
                                 '[ReturnName="GetNewMessagesResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(ServiceSoap), 'GetNewMessages', 'GetNewMessagesResult', '',
                                '[ArrayItemName="ResultArray"]');
  { ServiceSoap.GetMessageStatus }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServiceSoap), 'GetMessageStatus', '',
                                 '[ReturnName="GetMessageStatusResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://turbosms.in.ua/api/Turbo', 'ArrayOfString');

end.