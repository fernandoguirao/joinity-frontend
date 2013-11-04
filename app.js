
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

/* HOME */

app.get('/', routes.index);

app.get('/unlogged', routes.homeUnlogged);

/* BRANDS */

app.get('/brands/brandName', routes.brands);

app.get('/brands/brandName/edit', routes.brandsEdit);

/* EVENTS */

app.get('/events/eventName', routes.events);

app.get('/events/eventName/edit', routes.eventsEdit);

/* JOINITIES */

/* Mis joinities */

app.get('/myjoinities', routes.joinities);

/* Crea un joinity */

/*    Paso 1 */

app.get('/joinities/create/', routes.joinitiesCreate01);

/*    Paso 2 */

app.get('/joinities/create/2', routes.joinitiesCreate02);

/* Página de todas las aficiones */

app.get('/joinities/hobbies/all', routes.joinitiesAllHobbiesPage);

/* Página de una afición */

app.get('/joinities/hobbies/hobbyName', routes.joinitiesSingleHobbyPage);

/* Un joinity > aficiones */

app.get('/joinities/hobbies/joinityName', routes.joinitiesHobbiesJoinity);

/* Edición de joinity aficiones */

app.get('/joinities/hobbies/joinityName/edit', routes.joinitiesHobbiesJoinityEdit);

/* Un joinity > f&f */

app.get('/joinities/familyandfriends/joinityName', routes.joinitiesFamilyandfriendsJoinity);

/* Edición de joinity f&f */

app.get('/joinities/familyandfriends/joinityName/edit', routes.joinitiesFamilyandfriendsJoinityEdit);

/* Un joinity compras */

app.get('/joinities/shoppings/joinityName', routes.joinitiesShoppingsJoinity);

/* Edición de joinity compras */

app.get('/joinities/shoppings/joinityName/edit', routes.joinitiesShoppingsJoinityEdit);

/* MESSAGES */

app.get('/messages', routes.messages);

/* RESERVATIONS */

app.get('/reservations', routes.reservations);

/* Reservas (brand) */

app.get('/reservations/manage', routes.reservationsManage);

/* PAYMENTS */

app.get('/payments', routes.payments);

/* BILLS */

app.get('/payments/bills', routes.bills);

/* TASKS */

app.get('/tasks', routes.tasks);

/* USERS */

/* Mi perfil */

app.get('/user/me', routes.user);

/* Perfil de otros */

app.get('/users/other', routes.userUser);

app.get('/user/edit', routes.userEdit);

app.get('/user/settings', routes.userSettings);

/* OTROS */

app.get('/user/userName', user.list);

/* END ROUTES */

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
