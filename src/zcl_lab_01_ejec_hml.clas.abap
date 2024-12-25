CLASS zcl_lab_01_ejec_hml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_01_EJEC_HML IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*   do 5 times.
*     out->write( sy-tabix ).
*     out->write( sy-index ).
*   enddo.


*    select from /dmo/connection
*    fields
*    carrier_id,
*    airport_from_id
*    GROUP BY carrier_id,airport_from_id
*    into table @DATA(lt_table).
*
*    select from /dmo/connection
*    fields
*      max( distance ) as dis_max,
*      min( distance ) as dis_min
*      into table @data(lt_table2).
*
*
*    out->write( lt_table2 ).


*    data gv_target type d.
*    CONSTANTS: gco_date type d VALUE '20331233'.
*    gv_target = EXACT #( gco_date ).
*    out->write( gv_target ).

*    DATA: gv_target TYPE c LENGTH 5.
*CONSTANTS: gco_string TYPE string VALUE '0123456789ABCDEF'.
*           gv_target = EXACT #( gco_string+5(6) ).
*     out->write( gv_target ).

*DATA: gv_target TYPE p DECIMALS 3.
*CONSTANTS: go_int1 TYPE i VALUE 2.
*           gv_target = EXACT #( 2 / go_int1 ).
* out->write( gv_target ).

*DATA: gv_target TYPE string.
*CONSTANTS: gco_string TYPE c LENGTH 16 VALUE '0123456789ABCDEF'.
*gv_target = EXACT #( gco_string+5(5) ).
*out->write( gv_target ).

DATA: gv_target TYPE p DECIMALS 2.
CONSTANTS: go_int1 TYPE i VALUE 4.
 gv_target = EXACT #( 3 / go_int1 ).
out->write( gv_target ).




*    data(lo_date) = new ZCL_LAB_58_DATE_ANALYZER_HML(  ).
*
*    try.
*        try.
*           lo_date->analyze_date( ).
*           CATCH zcx_lab_56_no_date_hml INTO data(lx_no_date).
*
*
*            lo_date->analyze_format(
*             io_previos = lx_no_date
*            ).
*        ENDTRY.
*        CATCH zcx_lab_57_format_unknown_hml INTO data(lx_format).
*
*
*        out->write( |Excepción1:{ lx_format->get_text(  ) } { cl_abap_char_utilities=>newline } | ).
*
*        out->write( |Excepción2:{ lx_format->previous->get_text(  ) } { cl_abap_char_utilities=>newline } | ).
*
*    ENDTRY..

*    DATA lv_log TYPE string.
*
*    TRY.
*        DATA(lo_bank) = NEW zcl_lab_54_bank_hml(  ).
*        lo_bank->transfer(
*          EXPORTING
*            iv_iban = 'ES95 4329 8765 4321'
*          CHANGING
*            cv_log  = lv_log
*        ).
*
*        lv_log = |{ lv_log }....IBAN OK|.
*      CATCH               zcx_lab_52_operations_hml.
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_hml INTO data(lx_auth_iban).
*        lv_log = |{ lv_log }....{ lx_auth_iban->get_text( ) } {  cl_abap_char_utilities=>newline }|.
*
*      if lx_auth_iban->is_resumable eq abap_true.
*         resume.
*      endif.
*
*    ENDTRY.
*
*    out->write( lv_log ).
*    DATA(lo_user) = NEW zcl_lab_53_check_user_hml(  ).
*    DATA: lv_result TYPE i,
*          lv_num    TYPE i VALUE 20,
*          lv_div    TYPE i.
*
*    TRY.
*
*        TRY.
**        lo_user->check_user( iv_uname = sy-uname ).
*            lv_result = lv_num / lv_div.
*
*          CATCH zcx_lab_52_operations_hml INTO DATA(lx_auth).
*            out->write( lx_auth->get_text(  ) ).
*
*           CLEANUP INTO DATA(lo_exec).
*           out->write( |CLEANUP { lo_exec->get_text(  ) }| ).
*
*        ENDTRY.
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text( ) ).
*        lv_div = 10.
*        RETRY.
*    ENDTRY.
*
*    out->write( |Finish: { lv_result }| ).


*    data(lo_admin) = new zcl_lab_48_administrative_deph(  'Employ-1' ).
*    data(lo_admin2) = new zcl_lab_48_administrative_deph( 'Employ-2' ).
*    data(lo_admin3) = new zcl_lab_48_administrative_deph( 'Employ-3' ).
*    data(lo_admin4) = new zcl_lab_48_administrative_deph( 'Employ-4' ).
*
*    data(lo_employ) = new zcl_lab_49_employee_hml(  ).
*
*    lo_admin->notify_employee(  ).
*    out->write( lo_employ->log ).
**
*    lo_admin2->notify_employee(  ).
*    out->write( lo_employ->log ).
*
*    lo_admin3->notify_employee(  ).
*    out->write( lo_employ->log ).
*
*    lo_admin4->notify_employee(  ).
*    out->write( lo_employ->log ).

*        SET HANDLER zcl_lab_47_customer_service_hm=>on_new_call.
*
*        zcl_lab_46_mobile_operator_hml=>assign_call(  ).
*
*
*        out->write( zcl_lab_47_customer_service_hm=>log ).
*
**       data(lo_syst_ope) = new zcl_lab_44_operating_system_hm(  ).
**       data(lo_chrome) = new ZCL_LAB_45_CHROME_HML(  ).
**
**       SET HANDLER lo_chrome->on_close_window for lo_syst_ope.
**
**       clear lo_chrome->log.
**       lo_syst_ope->mouse_movement(  ).
**       out->write( lo_chrome->log ).
**
**       clear lo_chrome->log.
**       SET HANDLER lo_chrome->on_close_window for lo_syst_ope ACTIVATION abap_false.
**       lo_syst_ope->mouse_movement(  ).
**       out->write( lo_chrome->log ).

*      data(lo_screen) = new zcl_lab_42_screen_hml( 'LCD' ).
*      data(lo_navigation) = new zcl_lab_43_navigation_hml(  ).
*
*      set HANDLER lo_navigation->on_touch_screen for lo_screen.
*
*      lo_screen->element_selected(
*        iv_hor = 10
*        iv_ver = 5
*      ).
*
*      out->write( lo_navigation->log ).

*      data lo_org type REF TO object.
*      data lv_method type string.
*      data lv_head TYPE string.
*
*
*      lo_org = new zcl_lab_41_organization_hml(  ).
*      lv_method = |SET_HEADQUARTERS|.
*
*
*      call METHOD lo_org->(lv_method) EXPORTING IV_HEADQUARTERS = |Spain|.
*      lv_method = |GET_HEADQUARTERS|.
*      call METHOD lo_org->(lv_method) RECEIVING RV_HEADQUARTERS = lv_head.
*      out->write( lv_head ).

*      data lo_budget type REF TO zcl_lab_39_budget_hml.
*
*      lo_budget = new zcl_lab_40_actual_budget_hml(  ).
*
*      lo_budget->set_budget( 'Presupuesto del mes' ).
*
*      out->write( lo_budget->get_budget(  ) ).


*     data: lo_prod_price1 type REF TO zcl_lab_38_prod_price_hml,
*           lo_prod_price2 type REF TO zcl_lab_38_prod_price_hml.
*
*     lo_prod_price1 = new #(  ).
*     lo_prod_price1->price = 10.
*     lo_prod_price2 = lo_prod_price1.
*
*     lo_prod_price2->price = 20.
*     out->write( lo_prod_price1->price ).
*     out->write( lo_prod_price2->price ).

*     data: lo_screen type REF TO zcl_lab_37_screen_hml,
*           lo_phone TYPE REF TO zcl_lab_36_phone_hml.
*
*     lo_screen = new #(  ).
*     lo_phone = new #( lo_screen ).
*     lo_screen->set_screen_type( 'LCD' ) .
*     out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

*     data: lo_student type REF TO zcl_lab_34_student_hml,
*           lo_college type REF TO zcl_lab_35_college_hml.
*
*           lo_student = new #(  ).
*           lo_college = new #(  ).
*
*           lo_student->set_name( 'Hernan Joel' ).
*           lo_college->enroll_student( lo_student ).
*           out->write( lo_college->lo_student->get_name(  ) ).

*      data: lt_empl type STANDARD TABLE OF REF TO ZIF_LAB_04_EMPLOYEE_HML,
*            lo_empl type REF TO ZIF_LAB_04_EMPLOYEE_HML,
*            lo_empl_int type REF TO ZCL_LAB_32_INTERNAL_EMPL_HML,
*            lo_empl_ext type REF TO ZCL_LAB_33_EXPATRIATE_EMPL_HML.
*
*            lo_empl_int = new #(  ).
*            append lo_empl_int to lt_empl.
*            lo_empl_ext = new #(  ).
*            append lo_empl_ext to lt_empl.
*
*            loop at lt_empl into lo_empl.
*                out->write( lo_empl->get_employees_count(  ) ).
*            endloop.

*     data: lt_org type STANDARD TABLE OF REF TO ZCL_LAB_29_ORGANIZATION_HML,
*           lo_org type REF TO ZCL_LAB_29_ORGANIZATION_HML,
*           lo_org_ger type REF TO ZCL_LAB_30_ORG_GERMANY_HML,
*           lo_org_fra TYPE ref to ZCL_LAB_31_ORG_FRANCE_HML.
*
*
*    lo_org_ger = new #(  ).
*    append lo_org_ger to lt_org.
*    lo_org_fra = new #(  ).
*    append lo_org_fra to lt_org.
*
*    loop at lt_org INTO lo_org.
*    out->write( lo_org->get_location(  ) ).
*    endloop.


*    data(lo_logistic) = new zcl_lab_28_logistics_hml(  ).
*    out->write( lo_logistic->production_line(  ) ).
*    out->write( lo_logistic->input_products(  ) ).

*    data(lo_flight) = new zcl_lab_26_flights_hml(  ).
*    lo_flight->zif_lab_01_flight_hml~set_conn_id( '0001' ).
*    out->write( lo_flight->zif_lab_01_flight_hml~get_conn_id(  ) ).

*    lo_flight->zif_lab_02_customer_hml~get_customer(
*      EXPORTING
*        iv_customer_id = '000091'
*      RECEIVING
*        rs_cust_add    = data(ls_cust)
*    ).
*
*    lo_flight->zif_lab_03_airports_hml~get_airports(
*      EXPORTING
*        iv_airport_id = 'HAM'
*      RECEIVING
*        rv_airport    = data(ls_airport)
*    ).

*    lo_flight->get_customer(
*      EXPORTING
*        iv_customer_id = '000091'
*      RECEIVING
*        rs_cust_add    = data(ls_cust)
*    ).
*
*    lo_flight->get_airport(
*      EXPORTING
*        iv_airport_id = 'HAM'
*      RECEIVING
*        rv_airport    = data(ls_airport)
*    ).
*
*    out->write( ls_cust ).
*    out->write( ls_airport ).

*    data(lo_collaborator) = new ZCL_LAB_25_COLLABORATOR_HML(  ).
*
*    lo_collaborator->get_company_capital(
*      IMPORTING
*        ev_capital = data(lv_capital2) ).
*
*    out->write( lv_capital2 ).
*
*    data(lo_partner) = new ZCL_LAB_24_PARTNER_HML(  ).
*    lo_partner->get_company_capital(
*      IMPORTING
*        ev_capital = data(lv_capital)
*    ).
*
*    out->write( lv_capital ).
*
*    data(lo_student_1) = new    ZCL_LAB_22_STUDENT_HML(  ).
*    lo_student_1->assign_student(  ).
*
*    data(lo_animal) = new ZCL_LAB_18_ANIMAL_HML(  ).
*    data lo_lion type REF TO ZCL_LAB_19_LION_HML.
*    data lo_lion2 TYPE REF TO ZCL_LAB_19_LION_HML.

*    lo_lion = new #(  ).
*    lo_animal = lo_lion.

*    lo_lion->

**    try.
*         lo_lion2 ?= lo_animal.
*      catch CX_SY_MOVE_CAST_ERROR.
*      RETURN.
*    endtry.
*
*
*    out->write(  lo_animal->walk( ) ).
*    out->write( lo_lion2->walk( ) ).
*
**    data(lo_animal) = new ZCL_LAB_18_ANIMAL_HML( ).
**    data(lo_lion) = new ZCL_LAB_19_LION_HML( ).
**
**
**    lo_animal = lo_lion.
**    out->write( lo_animal->walk( ) ).
*
*    DATA ls_flight TYPE /dmo/flight.
*    DATA(lo_flight_price) = NEW zcl_lab_15_flight_price_hml(  ).
*    DATA(lo_price_disc) = NEW zcl_lab_16_price_discount_hml(  ).
*    DATA(lo_super_disc) = NEW zcl_lab_17_super_discount_hml(  ).
*
*    ls_flight = VALUE #( carrier_id  = 'SQ'
*                         connection_id = '0001'
*                         flight_date   = '20250101'
*                         price  = 100
*                         currency_code = 'USD' ).
*    lo_flight_price->add_price( ls_flight ).
*    lo_price_disc->add_price( ls_flight ).
*    lo_super_disc->add_price( ls_flight ).
*
*    lo_flight_price->get_price(
*      IMPORTING
*        es_flight = DATA(lv_price)
*    ).
*
*    lo_price_disc->get_price(
*      IMPORTING
*        es_flight = data(lv_disc)
*    ).
*
*    lo_super_disc->get_price(
*      IMPORTING
*        es_flight = data(lv_sup)
*    ).
*
*    out->write(  lv_price ).
*    out->write(  lv_disc ).
*    out->write(  lv_sup ).
*
*
*    DATA(lo_view) = NEW zcl_lab_14_grid_hml( iv_view_type = 'VIEW' iv_box = 'GRID' ).
*    lo_view->get_atributes(
*      IMPORTING
*        ev_view_type = DATA(lv_view_type)
*        ev_box       = DATA(lv_box)
*    ).
*
*    out->write( | { lv_view_type } - { lv_box } | ).
*
*    DATA(lo_system) = NEW zcl_lab_12_linux_hml(  ).
*    lo_system->get_architecture(
*      IMPORTING
*        ev_arquitecture = DATA(lv_arquitecture)
*    ).
*
*    out->write( lv_arquitecture ).
*
*    DATA(lab10) = NEW zcl_lab_10_constructor_hml(  ).
*    out->write(  lab10->log ).
*
*
*    zcl_lab_08_work_record_hml=>open_new_record(
*      iv_date       = '19860813'
*      iv_first_name = 'Hernan'
*      iv_last_name  = 'Martinez'
**      iv_surname    =
*    ).
*
*    zcl_lab_08_work_record_hml=>get_record(
*      IMPORTING
*        ev_date       = DATA(lv_date)
*        ev_first_name = DATA(lv_first_name)
*        ev_last_name  = DATA(lv_last_name)
*        ev_surname    = DATA(lv_surname)
*    ).
*
*    out->write( |Fecha: { lv_date } Primer Nombre: { lv_first_name } Apellido: { lv_last_name } | ).
*
*
*    DATA(lo_account) = NEW zcl_lab_09_account_hml(  ).
*    IF lo_account IS BOUND.
*      lo_account->set_value( 'La pelicula del Jocker 2 es una desepción' ).
*
*      lo_account->get_value(
*        IMPORTING
*          iban = DATA(lv_iban)
*      ).
*
*      out->write( lv_iban ).
*    ENDIF.
*
*    DATA(lo_student) = NEW zcl_lab_07_student_hml(  ).
*    IF lo_student IS BOUND.
*      lo_student->set_birth_date( iv_birth_date = '19860813' ).
*      out->write( lo_student->birth_date ).
*    ENDIF.
*
*    out->write( | Perú: { zcl_lab_06_elements_hml=>cs_countries-pe } Colombia: { zcl_lab_06_elements_hml=>cs_countries-co } España: { zcl_lab_06_elements_hml=>cs_countries-es } Brasil: { zcl_lab_06_elements_hml=>cs_countries-br } | ).
*
*
*
*    DATA: lt_object TYPE zcl_lab_06_elements_hml=>tty_element_objects,
*          ls_object TYPE zcl_lab_06_elements_hml=>ty_element_objects.
*
*
*    ls_object = VALUE #( class = 'ZCL_LAB_06_ELEMENTS_HML'
*                         instance = 'lo_object'
*                         reference = 'ZCL_OBJECT_HML').
*
*    DATA(lo_object) = NEW zcl_lab_06_elements_hml( ) .
*    IF lo_object IS BOUND.
*      lo_object->set_object( ls_object ).
*      out->write( lo_object->get_object(  )  ).
*    ENDIF.
*
*
*    DATA(lo_person) = NEW zcl_lab_04_person_hml(  ).
*    IF lo_person IS BOUND.
*      lo_person->set_age( EXPORTING iv_age = 38 ).
*      lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
*    ENDIF.
*
*    out->write( | Años: { lv_age }| ).
*
*    DATA(lo_flight) = NEW zcl_lab_05_flight_hml( ).
*    IF lo_flight IS BOUND.
*      lo_flight->check_flight(
*        EXPORTING
*          iv_carrier    = 'SQ'
*          iv_connection = '001'
*        RECEIVING
*          rv_flg        = DATA(lv_flg)
*      ).
*
*      lo_flight->check_flight(
*        EXPORTING
*          iv_carrier    = 'XX'
*          iv_connection = '001'
*        RECEIVING
*          rv_flg        = DATA(lv_flg2)
*      ).
*
*    ENDIF.
*    out->write( | El vuelo existe : { lv_flg } | ).
*    out->write( | El vuelo 2 existe: { lv_flg2 } | ).

  ENDMETHOD.
ENDCLASS.
