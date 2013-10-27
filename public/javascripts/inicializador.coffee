# NOTA: Recuerda inicializar sólo en las páginas pertinentes los plugins

$j = jQuery

$j ->

  # SELECT

  $('.selectpicker').selectpicker()

  # CHECKBOXES
  $().ready ->
    $("input.check").prettyCheckable color: "red"

  # DATEPICKER
  $().ready ->
    $('.datepicker').datepicker()