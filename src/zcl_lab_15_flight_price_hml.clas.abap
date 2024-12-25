CLASS zcl_lab_15_flight_price_hml DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    data MT_FLIGHTS type /DMO/T_FLIGHT.

    METHODS: add_price IMPORTING is_flight type /DMO/FLIGHT,
             get_price EXPORTING es_flight type /DMO/FLIGHT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_15_FLIGHT_PRICE_HML IMPLEMENTATION.


  METHOD add_price.
    me->mt_flights = VALUE #(  base me->mt_flights ( is_flight ) ).
  ENDMETHOD.


  method get_price.
    IF me->mt_flights is NOT INITIAL.
    es_flight = me->mt_flights[ 1 ].
    endif.
  ENDMETHOD.
ENDCLASS.
