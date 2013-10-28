

$j = jQuery

$j ->
  
  # Select: Heredar clases para pasar atributos visuales
  
  if selectpickercalled
    selectp = $j '.bootstrap-select'
    selectp.each ->
      selectC = $j(this).children('.dropdown-toggle')
      selectC.attr('class',$j(this).attr('class')).removeClass('btn-group bootstrap-select')
      $j(this).removeClass('btn')
      
  # Puntuar: iluminar estrellas
  
  $j('.votacion.no-votado .icon-star').hover \
    ( -> $j(this).prevAll().addClass('active')),
    ( -> $j('.votacion.no-votado .icon-star').removeClass('active'))
    
  # Banner: abrir al pulsar en más info
  
  $j('.more-info').click ->
    $j('.banner').toggleClass('open')