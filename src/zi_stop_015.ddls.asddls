@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Stop'
define view entity ZI_STOP_015
  as select from zstop_015
  association to parent ZI_ROUTE_015 as _Route on $projection.RouteUid = _Route.RouteUid
{
  key stop_uid as StopUid,
  route_uid as RouteUid,
  stop_id as StopId,
  location as Location,
  waste_type as WasteType,
  @Semantics.quantity.unitOfMeasure: 'KgUnit'
  capacity_kg as CapacityKg,
  cast( 'KG' as msehi ) as KgUnit,
  
  _Route
}
