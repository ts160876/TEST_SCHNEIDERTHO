@AbapCatalog.sqlViewName: 'ZV_BOOKINGS_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for bookings'
@Metadata.ignorePropagatedAnnotations: true
define view Z_BOOKINGS_VIEW as select from sbook
{
    carrid,
    connid,
    fldate,
    bookid
}
