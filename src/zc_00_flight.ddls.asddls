@EndUserText.label: 'Flight'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_00_Flight
  as projection on ZI_00_Flight
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_00_CarrierVH', element: 'Carrid' } }]
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      PlaneType,
      MaximumSeatsEconomyClass,
      OccupiedSeatsEconomyClass,
      PaymentSum,
      MaximumSeatsBusinessClass,
      OccupiedSeatsBusinessClass,
      MaximumSeatsFirstClass,
      OccupiedSeatsFirstClass,

      CarrierName,
      FlightDateCriticality,

      _Bookings : redirected to composition child ZC_00_Booking
}
