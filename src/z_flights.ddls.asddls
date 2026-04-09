@AbapCatalog.sqlViewName: 'ZV_FLIGHTS_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for flights'
@Metadata.ignorePropagatedAnnotations: true
define view Z_FLIGHTS_VIEW as select from sflight
{
    carrid,
    connid,
    fldate
}
