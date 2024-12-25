CLASS zcl_lab_05_flight_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
     METHODS check_flight IMPORTING iv_carrier type /dmo/carrier_id
                                    iv_connection type /dmo/connection_id
                          RETURNING VALUE(rv_flg) type abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_05_FLIGHT_HML IMPLEMENTATION.


  METHOD check_flight.
    select count( * )
    from /dmo/flight
    where carrier_id = @iv_carrier
      and connection_id = @iv_connection.
    if sy-dbcnt > 0.
       rv_flg = 'X'.
    endif.
  ENDMETHOD.
ENDCLASS.
