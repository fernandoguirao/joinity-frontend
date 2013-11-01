
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');

var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', __dirname + '/views');
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(express.cookieParser('your secret here'));
app.use(express.session());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

/* ROUTES */

/* Home */
app.get('/', routes.index);
app.get('/loged', routes.homeLoged);
app.get('/unloged', routes.homeUnloged);
/* Brands */
app.get('/brands/brandName', routes.brands);
app.get('/brands/brandName/edit', routes.brandsEdit);
/* Events */
app.get('/events/eventName', routes.events);
app.get('/events/eventName/edit', routes.eventsEdit);
/* Joinitys */
  /* Mis joinitys */
app.get('/myjoinities', routes.joinitys);
  /* Crea un joinity */
    /* Paso 1 */
app.get('/joinitys/create/1', routes.joinitysCreate01);
    /* Paso 2 */
app.get('/joinitys/create/2', routes.joinitysCreate02);
  /* Página de una afición */
app.get('/joinitys/hobbies/hobbyName', routes.joinitysHobbiesHobby);
  /* Un joinity > aficiones */
app.get('/joinitys/hobbies/joinityName', routes.joinitysHobbiesJoinity);
  /* Un joinity > f&f */
app.get('/joinitys/familyandfriends/joinityName', routes.joinitysFamilyandfriendsJoinity);
  /* Un joinity compras */
app.get('/joinitys/shoppings/joinityName', routes.joinitysShoppingsJoinity);
  /* Edición de joinity aficiones */
app.get('/joinitys/hobbies/joinityName/edit', routes.joinitysHobbiesJoinityEdit);
  /* Edición de joinity f&f */
app.get('/joinitys/familyandfriends/joinityName/edit', routes.joinitysFamilyandfriendsJoinityEdit);
  /* Edición de joinity compras */
app.get('/joinitys/shoppings/joinityName/edit', routes.joinitysShoppingsJoinityEdit);
/* Messages */
app.get('/messages', routes.messages);
/* Reservations */
app.get('/reservations', routes.reservations);
app.get('/reservations/manage', routes.reservationsManage);
/* Shoppings */
app.get('/shoppings', routes.shoppings);
app.get('/shoppings/payment', routes.shoppingsPayment);
app.get('/shoppings/purchases', routes.shoppingsPurchases);
/* Tasks */
app.get('/tasks', routes.tasks);
/* Users */
app.get('/user/me', routes.user);
app.get('/users/other', routes.userUser);
app.get('/user/login', routes.userLogin);
app.get('/user/contacts', routes.userContacts);
app.get('/user/edit', routes.userEdit);
app.get('/user/settings', routes.userSettings);

/* OTROS */
app.get('/user/userName', user.list);

/* END ROUTES */

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
