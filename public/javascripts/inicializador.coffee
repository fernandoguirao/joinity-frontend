# NOTA: Recuerda inicializar sólo en las páginas pertinentes los plugins

$j = jQuery

$j ->

  # SELECT

  $j('.selectpicker').selectpicker()

  # CHECKBOXES
  $j().ready ->
    $j("input.check").prettyCheckable color: "red"

  # DATEPICKER
  $j().ready ->
    $j('.datepicker').datepicker()