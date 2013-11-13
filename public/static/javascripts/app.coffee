

$j = jQuery

#======================
#! VARIABLES PÁGINAS
#======================
ishome = $j("#home")
ismensajes = $j("#mensajes")
ismisJoinitys = $j("#misJoinitys")
isUnJoinity = $j("#unJoinity")
isFamily = $j(".familyandfriends")
isCompras = $j(".compras")
isAficiones = $j(".aficiones")

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
  
  # Search-results fade on focus search input
    
  results = $j('.results-content')
  inputSearch = $j('.modal.fade .giant')
  inputSearch.focus ->
    results.removeClass('oculto')
  $j(document).mouseup (e) ->
    if not results.is(e.target) and results.has(e.target).length is 0 and not inputSearch.is(e.target)
      results.addClass('oculto')
        
  
  # Tasks -> users aparecen después de más info
  task = $j('li.task')
  userTask = $j('.asignada')
  timer = undefined
  delay = 200
  task.hover (->
    etask = $j(this)
    timer = setTimeout(->
      etask.find(userTask).addClass('show')
    , delay)
  ), ->
    clearTimeout timer
    userTask.removeClass('show')
    
  # Para que bajen las barras de invitación o login
  barBaja = (barra,boton,input,verdad) ->
    boton.click ->
      barra.addClass('down')
      input.focus()
      if verdad
        clase = $j('.darken')
        clase.addClass('visible')
    barra.click ->
      barra.addClass('down')
      # Si la variable verdad es true añadimos la capa de opacidad verde
      if verdad
        clase = $j('.darken')
        clase.addClass('visible')
    $(document).mouseup (e) ->
      if not barra.is(e.target) and barra.has(e.target).length is 0
        if verdad
          barra.removeClass('down')
          $j('.darken').removeClass('visible')

  # Ejecutando la función
  barBaja($j('.progress-top-bar form.login'),$j('.logbtn'),$j('.progress-top-bar form.login .first'),true)
  barBaja($j('.progress-top-bar form.invite'),$j('.invitebtn'),$j('.progress-top-bar form.invite .second'),true)
  barBaja($j('.progress-top-bar form.invite'),$j('.modal-invite'),$j('.progress-top-bar form.invite .second'),true)
  
  # Precargador en ajax
    # La función para que desaparezca --> hideLoader
  hideLoader = (targets) ->
    targets.children('#fadingBarsG').remove()
    hijo = targets.children('.hide-text')
    hijo.contents().unwrap()
  # Las funciones para que aparezca
  newPreloader = $j('.preloader')
  oldPreloader = $j('.ajax-loader #fadingBarsG')
  newPreloader.click ->
    if $j(this).has('#fadingBarsG').length
      hideLoader($j(this))
    else
      $j(this).wrapInner( "<div class='hide-text'></div>");
      oldPreloader.clone().appendTo($j(this))

  # Si infobar mover body
  if $j(".infoBar").length
    $j('body').addClass('downBody') 
    
  # Autoscroll home

  $j(".aficat").click ->
    $j("html,body").animate
      scrollTop: $j(".faficiones").offset().top
    , 800

  $j(".compracat").click ->
    $j("html,body").animate
      scrollTop: $j(".fcompras").offset().top
    , 800

  $j(".famcat").click ->
    $j("html,body").animate
      scrollTop: $j(".fandfriends").offset().top
    , 800
  
  # En joinities form intercambiar subida de archivos y escribir mensajes
  
  $j('.write .changeTo').click ->
    $j('.photoUpload').removeClass('hide')
    $j('.write').addClass 'hide'
  $j('.photoUpload .changeTo').click ->
    $j('.photoUpload').addClass('hide')
    $j('.write').removeClass 'hide'
  
  # Botón responder muestra comentarios
  $j('.answer').click ->
    $j(this).next().removeClass 'hide'
    $j(this).addClass 'hide'
    
  # En tamaño tablet el menu hidden muestra la barra lateral izquierda
  $j('.menu-hidden .btn.showLeft').click ->
    $j('.left-bar').removeClass('slideBar')
    $j(this).hide()
    $j('.menu-hidden .btn.hideLeft').css({'display':'inline-block'})
  $j('.menu-hidden .btn.hideLeft').click ->
    $j('.left-bar').addClass('slideBar')
    $j(this).hide()
    $j('.menu-hidden .btn.showLeft').show()

  # Borrar esto y sustituirlo por código backend
  if $j('.progress-top-bar').hasClass('unlogged')
    $j('body').addClass('unlogged')

  # Para subir imágenes, cuando hay una imagen
  $j('.cambiaImagen .img').click ->
    $j('.upload').removeClass('existe')
    $j(this).addClass('existe') 
