@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Route'
@Metadata.allowExtensions: true
define root view entity ZC_ROUTE_015
  provider contract transactional_query
  as projection on ZI_ROUTE_015
{
  key RouteUid,
  RouteId,
  DriverName,
  VehicleNo,
  RouteStatus,
  LastChangedAt,
  
  /* Associations */
  _Stops : redirected to composition child ZC_STOP_015
}
