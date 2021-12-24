
unit ufrmChristmasTree;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms3D, FMX.Types3D, FMX.Forms, FMX.Graphics,
  FMX.Dialogs, FMX.Objects, System.Math.Vectors, FMX.Objects3D, FMX.Controls3D,
  FMX.MaterialSources, FMX.Ani, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Layers3D, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, FMX.Media;

type
  TfrmChristmasTree = class(TForm3D)
    ConeChristmasTree: TCone;
    TextureMaterialSourceGlobe: TTextureMaterialSource;
    Light1: TLight;
    LightMaterialSourceGreenery: TLightMaterialSource;
    bulb7: TSphere;
    bulb8: TSphere;
    bulb1: TSphere;
    bulb2: TSphere;
    bulb3: TSphere;
    bulb4: TSphere;
    bulb5: TSphere;
    bulb6: TSphere;
    Path3dStar: TPath3D;
    BindingsList1: TBindingsList;
    ColorMaterialSourceBrown: TColorMaterialSource;
    CylinderTreeTrunk: TCylinder;
    LightMaterialSourceWood: TLightMaterialSource;
    ColorMaterialSourceStar: TColorMaterialSource;
    ColorAnimationTwinkle: TColorAnimation;
    StyleBook1: TStyleBook;
    bulb10: TSphere;
    bulb9: TSphere;
    bulb11: TSphere;
    bulb12: TSphere;
    bulb13: TSphere;
    bulb14: TSphere;
    bulb15: TSphere;
    bulb16: TSphere;
    bulb17: TSphere;
    bulb18: TSphere;
    bulb19: TSphere;
    bulb20: TSphere;
    bulb21: TSphere;
    bulb22: TSphere;
    bulb24: TSphere;
    bulb25: TSphere;
    bulb23: TSphere;
    bulb26: TSphere;
    bulb27: TSphere;
    bulb28: TSphere;
    bulb29: TSphere;
    bulb30: TSphere;
    procedure Form3DCreate(Sender: TObject);
  private
    procedure StartTreeLightsBlinking;
  end;

var
  frmChristmasTree: TfrmChristmasTree;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TfrmChristmasTree.Form3DCreate(Sender: TObject);
begin
  StartTreeLightsBlinking;
end;

procedure TfrmChristmasTree.StartTreeLightsBlinking;
const
  MAX_BULBS = 30;
var
  NewFloatAnimation: TFloatAnimation;
begin
  for var bulb := 1 to MAX_BULBS do begin
    NewFloatAnimation := TFloatAnimation.Create(self);
    NewFloatAnimation.Parent := FindComponent('bulb' + bulb.ToString) as TSphere;
    if Assigned(NewFloatAnimation.Parent) then begin
      NewFloatAnimation.Duration := 0.5 + Random;
      NewFloatAnimation.Delay := 0.5 + Random;
      NewFloatAnimation.StartValue := 0.0;
      NewFloatAnimation.StopValue  := 1.0;
      NewFloatAnimation.Loop := True;
      NewFloatAnimation.AutoReverse := True;
      NewFloatAnimation.PropertyName := 'Opacity';
      NewFloatAnimation.Enabled := True;
    end;
  end;
end;

end.
