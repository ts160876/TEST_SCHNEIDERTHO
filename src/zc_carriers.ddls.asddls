@EndUserText.label: 'Projection View for Carriers'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity ZC_CARRIERS
  provider contract transactional_query
  as projection on ZI_CARRIERS

{
  key CarrierId,
      CarrierName,
      CurrencyCode,
      Url
}
