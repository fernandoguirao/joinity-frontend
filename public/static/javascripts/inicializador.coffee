# NOTA: Recuerda inicializar sólo en las páginas pertinentes los plugins

$j = jQuery

$j ->

  # SELECT

  $j('.selectpicker').selectpicker()

  $j().ready ->
 
    # CHECKBOXES
    
    $j("input.check").prettyCheckable color: "red"

    # DATEPICKER
    
    $j('.datepicker').datepicker()
    
    # POPUPS
    
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
    
    $j('input[type=file]').bootstrapFileInput();
    $j('.file-inputs').bootstrapFileInput();
    
