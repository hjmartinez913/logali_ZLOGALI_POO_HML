INTERFACE zif_lab_01_flight_hml
  PUBLIC .

    INTERFACES zif_lab_03_airports_hml.
    class-data: comp_id type string.
    data: conn_id type string.

    METHODS: set_conn_id IMPORTING iv_conn_id TYPE string ,
             get_conn_id RETURNING VALUE(rv_conn_id) type string.

    ALIASES airport for zif_lab_03_airports_hml~get_airports.

ENDINTERFACE.
