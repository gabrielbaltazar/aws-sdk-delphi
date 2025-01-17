unit AWS.SNS.Transform.ResourceNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.ResourceNotFoundException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceNotFoundException, TXmlUnmarshallerContext>;
  
  TResourceNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceNotFoundException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IResourceNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EResourceNotFoundException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotFoundException; overload;
    class function Instance: IResourceNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceNotFoundExceptionUnmarshaller }

function TResourceNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EResourceNotFoundException;
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

function TResourceNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotFoundException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EResourceNotFoundException;
begin
  Response := EResourceNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TResourceNotFoundExceptionUnmarshaller.Create;
end;

class function TResourceNotFoundExceptionUnmarshaller.Instance: IResourceNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
