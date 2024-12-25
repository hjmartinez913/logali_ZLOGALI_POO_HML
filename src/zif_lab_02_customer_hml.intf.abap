INTERFACE zif_lab_02_customer_hml
  PUBLIC .
     types: BEGIN OF TY_CUST_ADDRESS,
                FIRST_NAME type STRING,
                last_name type string,
            END OF TY_CUST_ADDRESS.

   METHODS: get_customer IMPORTING iv_customer_id type string
                         RETURNING VALUE(rs_cust_add) type TY_CUST_ADDRESS.
ENDINTERFACE.
