@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Stop'
@Metadata.allowExtensions: true
define view entity ZC_STOP_015
  as projection on ZI_STOP_015
{
  key StopUid,
  RouteUid,
  StopId,
  Location,
  WasteType,
  CapacityKg,
  KgUnit,
  
  /* Associations */
  _Route : redirected to parent ZC_ROUTE_015
}
