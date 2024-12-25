CLASS zcl_lab_16_price_discount_hml DEFINITION INHERITING FROM ZCL_LAB_15_FLIGHT_PRICE_HML
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_16_PRICE_DISCOUNT_HML IMPLEMENTATION.


  METHOD add_price.
    data ls_flight type /DMO/FLIGHT.
    ls_flight = is_flight.
    ls_flight-price = ls_flight-price * ( 90 / 100 ).
    me->mt_flights = VALUE #( base me->mt_flights ( ls_flight ) ).
  ENDMETHOD.
ENDCLASS.
