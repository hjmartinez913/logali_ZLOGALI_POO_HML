CLASS zcx_lab_52_operations_hml DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF no_execute,
        msgid TYPE symsgid VALUE 'ZMC_LOGALI_HML',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'LV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'LV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'LV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'LV_MSGV4',
      END OF no_execute.

    CONSTANTS:
      BEGIN OF no_access,
        msgid TYPE symsgid VALUE 'ZMC_LOGALI_HML',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'LV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'LV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'LV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'LV_MSGV4',
      END OF no_access.

    DATA: lv_msgv1 TYPE msgv1,
          lv_msgv2 TYPE msgv2,
          lv_msgv3 TYPE msgv3,
          lv_msgv4 TYPE msgv4.


    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        msgv1     TYPE msgv1 OPTIONAL
        msgv2     TYPE msgv2 OPTIONAL
        msgv3     TYPE msgv3 OPTIONAL
        msgv4     TYPE msgv4 OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCX_LAB_52_OPERATIONS_HML IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->lv_msgv1 = msgv1.
    me->lv_msgv2 = msgv2.
    me->lv_msgv3 = msgv3.
    me->lv_msgv4 = msgv4.

  ENDMETHOD.
ENDCLASS.
