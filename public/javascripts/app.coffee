

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
  
  # Dial donuts
  donutfunction = ->
    $j(".azul .donutchart").donutchart()
    $j(".rojo .donutchart").donutchart bgColor: "#aa252b"
    $j(".verde .donutchart").donutchart bgColor: "#08705b"
    timer = undefined
    delay = 400
    $j(".joinity-thumb").hover (->
      donut = $j(".donutchart", this)
      # donut.stop()
      timer = setTimeout(->
        donut.donutchart "animate"
        # do your stuff here
      , delay)
    ), ->
      clearTimeout timer
  donutfunction()
  
  


