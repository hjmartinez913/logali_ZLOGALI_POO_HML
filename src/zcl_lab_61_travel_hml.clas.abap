CLASS zcl_lab_61_travel_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS: GET_TRAVEL EXPORTING es_travel type /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_61_TRAVEL_HML IMPLEMENTATION.


  METHOD get_travel.

    data: ls_travel type /dmo/flight,
          lv_carrier_id type /dmo/carrier_id.

    lv_carrier_id = 'SQ'.

    select single from /dmo/flight
    FIELDS *
    where carrier_id eq @lv_carrier_id
    into @es_travel.

    test-SEAM select_data.
     select single from /dmo/flight
        FIELDS *
        where carrier_id eq @lv_carrier_id
        into @ls_travel.
    end-test-seam.

    if lv_carrier_id eq 'AA'.
        es_travel = CORRESPONDING #( ls_travel ).
    endif.

  ENDMETHOD.
ENDCLASS.
