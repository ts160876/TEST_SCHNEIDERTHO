@AbapCatalog.sqlViewName: 'ZV_CARRIERS_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for carriers'
@Metadata.ignorePropagatedAnnotations: true
define view Z_CARRIERS_VIEW as select from scarr
{
    carrid
}
