TDocumentCommand = class(TObject)
private
  FDocument : TDocument;
protected
  procedure DoExecute; virtual; abstract;
  procedure DoRollback; virtual;

  // Used Self Encapsulate Field refactoring here. Now descendant commands
  // can access the document, even if they are declared in other units
  property Document : TDocument read FDocument write FDocument;
public
  constructor Create(ADocument : TDocument);

  procedure Execute;
  procedure Rollback; // Reverse effect of Execute
end;

The implementation is:
constructor TDocumentCommand.Create(ADocument : TDocument);
begin
  inherited Create;
  FDocument := ADocument;
end;

procedure TDocumentCommand.DoRollback;
begin
end;

procedure TDocumentCommand.Execute;
begin
  if Assigned(FDocument) then begin
    DoExecute;
  end;
end;

procedure TDocumentCommand.Rollback;
begin
  if Assigned(FDocument) then begin
    DoRollback;
  end;
end;
