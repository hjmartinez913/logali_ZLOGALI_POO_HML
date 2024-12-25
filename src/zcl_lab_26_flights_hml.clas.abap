CLASS zcl_lab_26_flights_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES ZIF_LAB_01_FLIGHT_HML.
      INTERFACES ZIF_LAB_02_CUSTOMER_HML.

      aliases: get_customer for zif_lab_02_customer_hml~get_customer,
               get_airport  for zif_lab_03_airports_hml~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_26_FLIGHTS_HML IMPLEMENTATION.


  METHOD zif_lab_01_flight_hml~get_conn_id.
    rv_conn_id = me->zif_lab_01_flight_hml~conn_id.
  ENDMETHOD.


  METHOD zif_lab_01_flight_hml~set_conn_id.
    me->zif_lab_01_flight_hml~conn_id = iv_conn_id.
  ENDMETHOD.


  METHOD zif_lab_02_customer_hml~get_customer.


        select single
         from /DMO/CUSTOMER
        fields *
          where customer_id = @iv_customer_id
          into @data(ls_customer).

        rs_cust_add = VALUE #( first_name = ls_customer-first_name
                               last_name  = ls_customer-last_name ).


  ENDMETHOD.


  METHOD zif_lab_03_airports_hml~get_airports.

    select single
    from /DMO/AIRPORT
    fields *
    where airport_id eq @iv_airport_id
    into @rv_airport.

  ENDMETHOD.
ENDCLASS.
