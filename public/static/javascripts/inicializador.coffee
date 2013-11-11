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
    
    # FILE INPUT
    
    $j('input[type=file]').bootstrapFileInput();
    $j('.file-inputs').bootstrapFileInput();
    
    # POPUPS
    
    $('.popup').popover()