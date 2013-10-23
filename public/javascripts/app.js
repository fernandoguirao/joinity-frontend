/* Comprobamos que hemos cargado este script */
console.log('Cargado correctamente');

/* Dropdown de notificaciones en jJeftBar */
$('.jLeftBar .ui.dropdown')
  .dropdown({
    transition : 'scale'
  })
;

/* Dropdown selector en jRightBar */
$('.jRightBar .dropdown')
  .dropdown({action: 'updateForm'})
;

/* Acordeón de jLeftBar joinitys */
$('.jLeftBar .ui.accordion')
  .accordion()
;

/* Modal buscador */
$('.jSearchModal .ui.modal')
  .modal()
;

$('.jSearchBtn').click(function(){
  $('.jSearchModal.ui.modal').modal('show')
  ;
})

/* Modal prueba */
$('.jModal .ui.modal')
  .modal()
;

$('.jModalBtn').click(function(){
  $('.jModal.ui.modal').modal('show')
  ;
})

/* Tabs buscador */
$('.jSearchModal .filter.menu .item')
  .tab()
;

/* Dropdown selector en user/Edit */
$('.edituser.dropdown')
  .dropdown({action: 'updateForm'})
;