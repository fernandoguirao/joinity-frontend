
/*
 * GET home page.
 */

/* HOME */

exports.index = function(req, res){
  res.render('pages/home/loged/index', { title: 'Joinity' });
};

exports.homeLoged = function(req, res){
  res.render('pages/home/loged/index', { title: 'Joinity' });
};

exports.homeUnloged = function(req, res){
  res.render('pages/home/unloged/index', { title: 'Joinity' });
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

/* JOINITYS */

exports.joinitys = function(req, res){
  res.render('pages/joinitys/index', { title: 'Joinitys' });
};

exports.joinitysCreate = function(req, res){
  res.render('pages/joinitys/create/index', { title: 'Create joinity' });
};

exports.joinitysHobbiesHobby = function(req, res){
  res.render('pages/joinitys/hobbies/categories/index', { title: 'Hobby Page' });
};

exports.joinitysHobbiesJoinity = function(req, res){
  res.render('pages/joinitys/hobbies/index', { title: 'Hobby Page' });
};

exports.joinitysHobbiesJoinityEdit = function(req, res){
  res.render('pages/joinitys/hobbies/edit/index', { title: 'Hobby Page Edit' });
};

exports.joinitysFamilyandfriendsJoinity = function(req, res){
  res.render('pages/joinitys/familyandfriends/index', { title: 'Hobby Page' });
};

exports.joinitysFamilyandfriendsJoinityEdit = function(req, res){
  res.render('pages/joinitys/familyandfriends/edit/index', { title: 'Hobby Page Edit' });
};

exports.joinitysShoppingsJoinity = function(req, res){
  res.render('pages/joinitys/shoppings/index', { title: 'Shopping Page' });
};

exports.joinitysShoppingsJoinityEdit = function(req, res){
  res.render('pages/joinitys/shoppings/edit/index', { title: 'Shopping Page Edit' });
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

/* SHOPPINGS */

exports.shoppings = function(req, res){
  res.render('pages/shoppings/index', { title: 'Shoppings' });
};

exports.shoppingsPayment = function(req, res){
  res.render('pages/shoppings/payment/index', { title: 'Shoppings payment' });
};

exports.shoppingsPurchases = function(req, res){
  res.render('pages/shoppings/purchases/index', { title: 'Shoppings purchases' });
};

/* TASKS */

exports.tasks = function(req, res){
  res.render('pages/tasks/index', { title: 'Tasks' });
};

/* USERS */

exports.user = function(req, res){
  res.render('pages/user/index', { title: 'My profile' });
};

exports.userContacts = function(req, res){
  res.render('pages/user/contacts/index', { title: 'Contacts' });
};

exports.userCreate = function(req, res){
  res.render('pages/user/create/index', { title: 'Create user' });
};

exports.userEdit = function(req, res){
  res.render('pages/user/edit/index', { title: 'Edit profile' });
};

exports.userLogin = function(req, res){
  res.render('pages/user/login/index', { title: 'Login' });
};

exports.userSettings = function(req, res){
  res.render('pages/user/settings/index', { title: 'Settings' });
};

exports.userUser = function(req, res){
  res.render('pages/user/user/index', { title: 'UserName' });
};

