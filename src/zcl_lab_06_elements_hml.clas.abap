CLASS zcl_lab_06_elements_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  types: BEGIN OF ty_element_objects,
         class type string,
         instance type string,
         reference type string,
         END OF ty_element_objects,
         tty_element_objects type TABLE OF ty_element_objects.


   CONSTANTS: BEGIN OF cs_countries,
              pe type c LENGTH 2 VALUE 'PE',
              co TYPE c LENGTH 2 VALUE 'CO',
              br TYPE c LENGTH 2 VALUE 'BR',
              es TYPE c LENGTH 2 VALUE 'ES',
              END OF CS_COUNTRIES.


   METHODS: set_object IMPORTING is_object type ty_element_objects,
            get_object RETURNING VALUE(rs_object) type ty_element_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
  data ms_object type ty_element_objects.
ENDCLASS.



CLASS ZCL_LAB_06_ELEMENTS_HML IMPLEMENTATION.


  METHOD get_object.
    rs_object = ms_object.
    return rs_object.
  ENDMETHOD.


  METHOD set_object.
    me->ms_object = is_object.
  ENDMETHOD.
ENDCLASS.
