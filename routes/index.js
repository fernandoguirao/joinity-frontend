
/*
 * GET home page.
 */

/* HOME */

exports.index = function(req, res){
  res.render('pages/home/logged/index', { title: 'Joinity' });
};

exports.homeUnlogged = function(req, res){
  res.render('pages/home/unlogged/index', { title: 'Joinity' });
};

/* BRANDS */

exports.brands = function(req, res){
  res.render('pages/brands/index', { title: 'BrandName' });
};

exports.brandsEdit = function(req, res){
  res.render('pages/brands/edit/index', { title: 'BrandName - Edit Brand' });
};

/* EVENTS */

exports.events = function(req, res){
  res.render('pages/events/index', { title: 'Events' });
};

exports.eventsEdit = function(req, res){
  res.render('pages/events/edit/index', { title: 'Edit Event' });
};

/* JOINITIES */

/* Mis joinities */

exports.joinities = function(req, res){
  res.render('pages/joinities/my-joinities/index', { title: 'joinities' });
};

/* Crea un joinity */

/* Paso 1 */

exports.joinitiesCreate01 = function(req, res){
  res.render('pages/joinities/create/index', { title: 'Create joinity' });
};

/* Paso 2 */

exports.joinitiesCreate02 = function(req, res){
  res.render('pages/joinities/hobbies/edit/index', { title: 'Create joinity' });
};

/* Página de todas las aficiones */

exports.joinitiesAllHobbiesPage = function(req, res){
  res.render('pages/joinities/hobbies/all-hobbies-page/index', { title: 'Hobby Page' });
};

/* Página de una afición */

exports.joinitiesSingleHobbyPage = function(req, res){
  res.render('pages/joinities/hobbies/single-hobby-page/index', { title: 'Hobby Page' });
};

/* Un joinity > aficiones */

exports.joinitiesHobbiesJoinity = function(req, res){
  res.render('pages/joinities/hobbies/joinity/index', { title: 'Hobby Page' });
};

/* Edición de un joinity > aficiones */

exports.joinitiesHobbiesJoinityEdit = function(req, res){
  res.render('pages/joinities/hobbies/joinity/edit/index', { title: 'Hobby Page Edit' });
};

/* Un joinity > family */

exports.joinitiesFamilyandfriendsJoinity = function(req, res){
  res.render('pages/joinities/familyandfriends/joinity/index', { title: 'Hobby Page' });
};

/* Edición de un joinity > family */

exports.joinitiesFamilyandfriendsJoinityEdit = function(req, res){
  res.render('pages/joinities/familyandfriends/joinity/edit/index', { title: 'Hobby Page Edit' });
};

/* Un joinity > compras */

exports.joinitiesShoppingsJoinity = function(req, res){
  res.render('pages/joinities/shoppings/joinity/index', { title: 'Shopping Page' });
};

/* Edición de un joinity > compras */

exports.joinitiesShoppingsJoinityEdit = function(req, res){
  res.render('pages/joinities/shoppings/joinity/edit/index', { title: 'Shopping Page Edit' });
};

/* MESSAGES */

exports.messages = function(req, res){
  res.render('pages/messages/index', { title: 'Messages' });
};

/* RESERVATIONS */

exports.reservations = function(req, res){
  res.render('pages/reservations/index', { title: 'Reservations' });
};

exports.reservationsManage = function(req, res){
  res.render('pages/reservations/manage/index', { title: 'Reservations manage' });
};

/* PAYMENTS */

exports.payments = function(req, res){
  res.render('pages/payments/index', { title: 'Shoppings' });
};

/* BILLS */

exports.bills = function(req, res){
  res.render('pages/payments/bills/index', { title: 'Shoppings payment' });
};

/* TASKS */

exports.tasks = function(req, res){
  res.render('pages/tasks/index', { title: 'Tasks' });
};

/* USERS */

/* Mi perfil */

exports.user = function(req, res){
  res.render('pages/user/profile/index', { title: 'My profile' });
};

exports.userEdit = function(req, res){
  res.render('pages/user/profile/edit/index', { title: 'Edit profile' });
};

exports.userSettings = function(req, res){
  res.render('pages/user/profile/settings/index', { title: 'Settings' });
};

/* Otros usuarios */

exports.userUser = function(req, res){
  res.render('pages/user/profile/index', { title: 'UserName' });
};

/* Otras opciones */

exports.userCreate = function(req, res){
  res.render('pages/user/create/index', { title: 'Create user' });
};

exports.userLogin = function(req, res){
  res.render('pages/user/login/index', { title: 'Login' });
};
