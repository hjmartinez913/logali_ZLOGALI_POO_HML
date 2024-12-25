INTERFACE zif_lab_03_airports_hml
  PUBLIC .
    METHODS: get_airports IMPORTING iv_airport_id type string
                          RETURNING VALUE(rv_airport) type /DMO/AIRPORT.
ENDINTERFACE.
