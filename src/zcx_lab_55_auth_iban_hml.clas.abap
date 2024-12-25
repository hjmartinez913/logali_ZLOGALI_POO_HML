CLASS zcx_lab_55_auth_iban_hml DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF resumable,
        msgid TYPE symsgid VALUE 'ZMC_LOGALI_HML',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'LV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'LV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'LV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'LV_MSGV4',
      END OF RESUMABLE,

      BEGIN OF exception,
        msgid TYPE symsgid VALUE 'ZMC_LOGALI_HML',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE 'LV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'LV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'LV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'LV_MSGV4',
      END OF exception.

    DATA: lv_msgv1 TYPE msgv1,
          lv_msgv2 TYPE msgv2,
          lv_msgv3 TYPE msgv3,
          lv_msgv4 TYPE msgv4.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCX_LAB_55_AUTH_IBAN_HML IMPLEMENTATION.


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

  ENDMETHOD.
ENDCLASS.
