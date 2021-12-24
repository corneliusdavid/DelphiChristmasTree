program DelphiChristmasTree;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmChristmasTree in 'ufrmChristmasTree.pas' {frmChristmasTree};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait, TFormOrientation.InvertedPortrait];
  Application.CreateForm(TfrmChristmasTree, frmChristmasTree);
  Application.Run;
end.
