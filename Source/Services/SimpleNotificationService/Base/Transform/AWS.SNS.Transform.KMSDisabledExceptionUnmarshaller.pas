unit AWS.SNS.Transform.KMSDisabledExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSDisabledException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKMSDisabledExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSDisabledException, TXmlUnmarshallerContext>;
  
  TKMSDisabledExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSDisabledException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSDisabledExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSDisabledException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSDisabledException; overload;
    class function Instance: IKMSDisabledExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSDisabledExceptionUnmarshaller }

function TKMSDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSDisabledException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TKMSDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSDisabledException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EKMSDisabledException;
begin
  Response := EKMSDisabledException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TKMSDisabledExceptionUnmarshaller.Create;
begin
  FInstance := TKMSDisabledExceptionUnmarshaller.Create;
end;

class function TKMSDisabledExceptionUnmarshaller.Instance: IKMSDisabledExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
