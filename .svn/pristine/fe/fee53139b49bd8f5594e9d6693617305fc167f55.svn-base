unit funcoes.diversas;

interface
uses
  JvBaseEdits,
  JvDBControls,
  JvExMask,
  JvToolEdit,

  System.Classes,
  System.SysUtils,
  System.Variants;

implementation

procedure OnClickJvDBControls(Sender: TObject);
begin
  if (Sender is TJvDBCalcEdit) then
  begin
    (Sender as TJvDBCalcEdit).DataSource.DataSet.Edit;
    (Sender as TJvDBCalcEdit).SelectAll;
  end;
end;

end.
