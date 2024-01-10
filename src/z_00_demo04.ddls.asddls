@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 4: Built-In Functions'
define view entity Z_00_Demo04
  as select from sflight
{
  /* Numeric Functions */
  5.0 / 3.0                              as Divide1,
  division(5, 3, 2)                      as Division1,
  price,
  currency,
  @Semantics.amount.currencyCode: 'currency'
  round(price, -1)                       as Round1,

  /* String Functions */
  concat_with_space('Hello', 'World', 1) as Concatenation1,
  length('X  ')                          as LengthXSS,
  length('  X')                          as LengthSSX,
  length('   ')                          as LengthSSS,

  /* Unit- and Currency Conversions */
  @Semantics.amount.currencyCode: 'ConvertedCurrencyCode'
  currency_conversion(
    amount => price,
    source_currency => currency,
    target_currency => cast('EUR' as abap.cuky),
    exchange_rate_date => fldate )       as ConvertedPrice,
  cast('EUR' as abap.cuky)               as ConvertedCurrencyCode,

  /* Date- and Time Functions */
  fldate,
  dats_add_days(fldate, 14, 'FAIL')      as DatsAddDays1
}
