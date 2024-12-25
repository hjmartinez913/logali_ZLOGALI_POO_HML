CLASS zcl_lab_17_super_discount_hml DEFINITION INHERITING FROM zcl_lab_15_flight_price_hml
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_17_SUPER_DISCOUNT_HML IMPLEMENTATION.


  METHOD add_price.
    data ls_flight type /DMO/FLIGHT.
    ls_flight = is_flight.
    ls_flight-price = ls_flight-price * ( 80 / 100 ).
    me->mt_flights = VALUE #( base me->mt_flights ( ls_flight ) ).
  ENDMETHOD.
ENDCLASS.
