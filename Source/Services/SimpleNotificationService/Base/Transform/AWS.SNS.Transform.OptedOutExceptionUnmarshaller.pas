unit AWS.SNS.Transform.OptedOutExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.OptedOutException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOptedOutExceptionUnmarshaller = IErrorResponseUnmarshaller<EOptedOutException, TXmlUnmarshallerContext>;
  
  TOptedOutExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOptedOutException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IOptedOutExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EOptedOutException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EOptedOutException; overload;
    class function Instance: IOptedOutExceptionUnmarshaller; static;
  end;
  
implementation

{ TOptedOutExceptionUnmarshaller }

function TOptedOutExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EOptedOutException;
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

function TOptedOutExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EOptedOutException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EOptedOutException;
begin
  Response := EOptedOutException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOptedOutExceptionUnmarshaller.Create;
begin
  FInstance := TOptedOutExceptionUnmarshaller.Create;
end;

class function TOptedOutExceptionUnmarshaller.Instance: IOptedOutExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
