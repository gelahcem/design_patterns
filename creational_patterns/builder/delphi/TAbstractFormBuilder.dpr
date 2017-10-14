type
  TAbstractFormBuilder = class
  private
    FForm: TForm;
    procedure BuilderFormClose(Sender: TObject; var Action: TCloseAction);
  protected
    function GetForm: TForm; virtual;
  public
    procedure CreateForm(AOwner: TComponent); virtual;
    procedure CreateSpeedButton; virtual; abstract;
    procedure CreateEdit; virtual; abstract;
    procedure CreateLabel; virtual; abstract;
    property Form: TForm read GetForm;
  end;

type
  TRedFormBuilder = class(TAbstractFormBuilder)
  private
    FNextLeft, FNextTop: Integer;
  public
    procedure CreateForm(AOwner: TComponent); override;
    procedure CreateSpeedButton; override;
    procedure CreateEdit; override;
    procedure CreateLabel; override;
  end;

type
  TBlueFormBuilder = class(TAbstractFormBuilder)
  private
    FNextLeft, FNextTop: Integer;
  public
    procedure CreateForm(AOwner: TComponent); override;
    procedure CreateSpeedButton; override;
    procedure CreateEdit; override;
    procedure CreateLabel; override;
  end;
