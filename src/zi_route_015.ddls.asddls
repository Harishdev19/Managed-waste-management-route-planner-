@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Route'
define root view entity ZI_ROUTE_015
  as select from zroute_015
  composition [0..*] of ZI_STOP_015 as _Stops
{
  key route_uid as RouteUid,
  route_id as RouteId,
  driver_name as DriverName,
  vehicle_no as VehicleNo,
  route_status as RouteStatus,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  
  _Stops // Make association public
}
