# NOTA: Recuerda inicializar sólo en las páginas pertinentes los plugins

$j = jQuery

$j ->

  # SELECT
  if $j('.selectpicker').length > 0
    $j('.selectpicker').selectpicker()

  $j().ready ->
 
    # CHECKBOXES
    if $j('input.check').length > 0
      $j("input.check").prettyCheckable color: "red"

    # DATEPICKER
    if $j('.datepicker').length > 0
      $j('.datepicker').datepicker()
    
    # POPUPS
    if $j('.popupfooter').length > 0
      popupfooter = $j('.popupfooter').html()
  
      $j("#buyPopup").popover
        trigger: "click"
        html: true
        placement: "bottom"
        content: popupfooter
      
      $j("#buyPopup2").popover
        trigger: "click"
        html: true
        placement: "right"
        content: popupfooter
      
    # FILE INPUT
    if $j('file-inputs').length > 0
      $j('input[type=file]').bootstrapFileInput();
      $j('.file-inputs').bootstrapFileInput();
    
