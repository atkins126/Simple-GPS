program SimpleGPS;

uses
  System.StartUpCopy,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  FMX.Forms,
  Principal in 'Principal.pas' {FPrinc},
  Androidapi.JNI.Location in 'Androidapi.JNI.Location.pas',
  System.Android.Sensors in 'System.Android.Sensors.pas',
  DataMod in 'DataMod.pas' {DMod: TDataModule},
  AggCoordenada in 'AggCoordenada.pas' {FrmAggCoord: TFrame};

{$R *.res}

begin
  Application.Initialize;
  SharedActivity.getWindow.addFlags(TJWindowManager_LayoutParams.JavaClass.FLAG_KEEP_SCREEN_ON);
  Application.FormFactor.Orientations:=[TFormOrientation.Portrait,
    TFormOrientation.InvertedPortrait, TFormOrientation.Landscape,
    TFormOrientation.InvertedLandscape];
  Application.CreateForm(TDMod, DMod);
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
