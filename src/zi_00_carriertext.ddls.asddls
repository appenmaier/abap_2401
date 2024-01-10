@EndUserText.label: 'Text for Carrier'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_00_CarrierText
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname
}
