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
      return $j('.datepicker').datepicker();
    });
  });

}).call(this);