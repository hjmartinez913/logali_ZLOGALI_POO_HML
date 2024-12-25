CLASS zcl_lab_30_org_germany_hml DEFINITION INHERITING FROM ZCL_LAB_29_ORGANIZATION_HML
    PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION,
             get_quan_people.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_30_ORG_GERMANY_HML IMPLEMENTATION.


  METHOD get_location.
        rv_location = | Organización de Alemania |.
  ENDMETHOD.


  METHOD get_quan_people.

  ENDMETHOD.
ENDCLASS.
