REPORT  z_highlight_js.
*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
* Purpose:
* ~~~~~~~~
* This reports illustrates how an ABAP program looks in Highlight.js
*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

DATA: gt_sflight      TYPE sflight OCCURS 0,      " Output-Table
      gt_fieldcatalog TYPE lvc_t_fcat,
      ok_code LIKE sy-ucomm,
      save_ok LIKE sy-ucomm.           " OK-Code

*###############################################################
* LOCAL CLASSES
*###############################################################
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* §4.Define a class for a data object to exchange data
*    within ALV Control when using the drag and drop operation.
CLASS LCL_DRAGDROPOBJ DEFINITION.
  PUBLIC SECTION.
    DATA: cps_sflight TYPE sflight,
          cp_node_text TYPE lvc_value,
          cp_node_key TYPE lvc_nkey.

ENDCLASS.

START-OF-SELECTION.
  WRITE 'END OF TEST'.

END-OF-SELECTION.