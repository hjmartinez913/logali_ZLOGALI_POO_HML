CLASS zcl_lab_24_partner_hml DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS GET_COMPANY_CAPITAL EXPORTING ev_capital type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_24_PARTNER_HML IMPLEMENTATION.


  METHOD get_company_capital.
    data(lo_company) = new ZCL_LAB_23_COMPANY_HML(  ).
    lo_company->capital = | Logali Group |.
    ev_capital = lo_company->capital.
  ENDMETHOD.
ENDCLASS.
