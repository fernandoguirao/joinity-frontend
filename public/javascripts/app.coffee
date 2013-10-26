

$j = jQuery

$j ->
  
  # Select: Heredar clases para pasar atributos visuales
  
  if selectpickercalled
    selectp = $j '.bootstrap-select'
    selectp.each ->
      selectC = $j(this).children('.dropdown-toggle')
      selectC.attr('class',$j(this).attr('class')).removeClass('btn-group bootstrap-select')
      $j(this).removeClass('btn')
      

