TOAbstractFactory = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;

    //abstract widget constructors
    function CreateSpeedButton(AOwner: TComponent): TSpeedButton; virtual; abstract;
    function CreateEdit(AOwner: TComponent): TEdit; virtual; abstract;
    function CreateLabel(AOwner: TComponent): TLabel; virtual; abstract;
  end;
