@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressions'
define view entity Z_00_Demo09
  as select from Z_00_Demo08
{
  key Carrid,
  key Connid,
      Cityfrom,
      Cityto,
      _Carrier.carrname as CarrierName,

      /* Associations */
      _Flights
}
