#======================
#! VARIABLES Y PÁGINAS
#======================

$j = jQuery

isVotacion = $j '.votacion'
isBannerAnimated = $j '.more-info'
isDonuts = $j '.donutchart'
isPasos = $j '.pasos'
isSearch = $j '.results-content'
isTasks = $j 'li.task'
isLogin = $j '.progress-top-bar form.login'
isHome = $j '.faficiones'
isWrite = $j '.write'
isResponderComentario = $j '.answer'
isUnlogged = $j '.unlogged'
isSubeImagen = $j '.isSubeImagen'
isMuestraFormSiguiente = $j '.muestra-siguiente'
isComprasReservas = $j '.navRight'

# ------------------
#     FUNCIONES
# ------------------

$j ->
  
  # Select: Heredar clases para pasar atributos visuales
  if selectpickercalled
    selectp = $j '.bootstrap-select'
    selectp.each ->
      selectC = $j(this).children('.dropdown-toggle')
      selectC.attr('class',$j(this).attr('class')).removeClass('btn-group bootstrap-select')
      $j(this).removeClass('btn')
      
  # Puntuar: iluminar estrellas
  if isVotacion.length > 0
    $j('.votacion.no-votado .icon-star').hover \
      ( -> $j(this).prevAll().addClass('active')),
      ( -> $j('.votacion.no-votado .icon-star').removeClass('active'))
    
  # Banner: abrir al pulsar en más info
  if isBannerAnimated.length > 0
    $j('.more-info').click ->
      $j('.banner').toggleClass('open')
  
  # Dial donuts
  if isDonuts.length > 0
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
  if isPasos.length > 0
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
  if isSearch.length > 0
    results = $j('.results-content')
    inputSearch = $j('.modal.fade .giant')
    inputSearch.focus ->
      results.removeClass('oculto')
    $j(document).mouseup (e) ->
      if not results.is(e.target) and results.has(e.target).length is 0 and not inputSearch.is(e.target)
        results.addClass('oculto')
  
  # Tasks -> users aparecen después de más info
  if isTasks.length > 0
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
  if isLogin.length > 0
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
  if isHome.length > 0
    offsetAfi = $j(".faficiones").offset().top
    offsetFam = $j(".fandfriends").offset().top
    offsetCom = $j(".fcompras").offset().top
    $j(".aficat").click ->
      $j("html,body").animate
        scrollTop: offsetAfi - 90
      , 800
  
    $j(".compracat").click ->
      $j("html,body").animate
        scrollTop: offsetCom - 90
      , 800
  
    $j(".famcat").click ->
      $j("html,body").animate
        scrollTop: offsetFam - 90
      , 800
  
  # En joinities form intercambiar subida de archivos y escribir mensajes
  if isWrite.length > 0
    $j('.write .changeTo').click ->
      $j('.photoUpload').removeClass('hide')
      $j('.write').addClass 'hide'
    $j('.photoUpload .changeTo').click ->
      $j('.photoUpload').addClass('hide')
      $j('.write').removeClass 'hide'
  
  # Botón responder muestra comentarios
  if isResponderComentario.length > 0
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
  if isUnlogged.length > 0
    if $j('.progress-top-bar').hasClass('unlogged')
      $j('body').addClass('unlogged')

  # Para subir imágenes, cuando hay una imagen
  if isSubeImagen.length > 0
    $j('.cambiaImagen .img').click ->
      $j('.upload').removeClass('existe')
      $j(this).addClass('existe') 

  # En formularios mostrar el campo siguiente si hacemos click en un radio
  if isMuestraFormSiguiente.length > 0
    $j('.muestra-siguiente').click ->
      $j(this).parent().parent().addClass('hidden')
      $j(this).parent().parent().next().removeClass('hidden')
      
  if isComprasReservas.length > 0
    $j('.navRight a').click ->
      if $j(this).hasClass('c0')
        offTop = $j(".navLeft .c0").offset().top
      if $j(this).hasClass('c1')
        offTop = $j(".navLeft .c1").offset().top
      if $j(this).hasClass('c2')
        offTop = $j(".navLeft .c2").offset().top
      if $j(this).hasClass('c3')
        offTop = $j(".navLeft .c3").offset().top
      $j("html,body").animate
        scrollTop: offTop - 30
      , 800
