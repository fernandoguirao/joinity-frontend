

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
      donut.stop().donutchart "stopanimate"
      timer = setTimeout(->
        donut.stop().donutchart "animate"
      , delay)
    ), ->
      clearTimeout timer
  donutfunction()
  
  # Animación pasos

  functionTimeOut = (a) ->
    timer = undefined
    delay = 500
    timer = setTimeout(->
      a.addClass('activo')
    , delay)
  liFirst = $j('.pasos li:first')
  liLast = $j('.pasos li:last')
  $j('.pasos li .play').click (->
    li = $j(this).parent()
    if li.is(liFirst)
      li.removeClass('activo')
      functionTimeOut(li.next())
    else if li.is(liLast)
      li.removeClass('activo')
      functionTimeOut(liFirst)
    else
      li.removeClass('activo')
      functionTimeOut(li.next())
  )
  $j('.pasos li .rewind').click (->
    li = $j(this).parent()
    if li.is(liFirst)
      li.removeClass('activo')
      functionTimeOut(liLast)
    else if li.is(liLast)
      li.removeClass('activo')
      functionTimeOut(li.prev())
    else
      li.removeClass('activo')
      functionTimeOut(li.prev())
  )