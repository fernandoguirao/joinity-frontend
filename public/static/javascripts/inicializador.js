// Generated by CoffeeScript 1.6.3
(function() {
  var $j;

  $j = jQuery;

  $j(function() {
    $j('.selectpicker').selectpicker();
    return $j().ready(function() {
      $j("input.check").prettyCheckable({
        color: "red"
      });
      $j('.datepicker').datepicker();
      $j('input[type=file]').bootstrapFileInput();
      return $j('.file-inputs').bootstrapFileInput();
    });
  });

}).call(this);