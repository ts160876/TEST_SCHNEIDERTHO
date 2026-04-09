@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Carriers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory:   #S,
  dataClass:      #MASTER }

define root view entity ZI_CARRIERS
  as select from scarr

{
      @ObjectModel.text.element: ['CarrierName']
  key carrid                    as CarrierId,

      @Semantics.text: true
      carrname                  as CarrierName,

      @Semantics.currencyCode: true
      currcode                  as CurrencyCode,

      url                       as Url
}
