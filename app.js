
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
app.get('/joinitys', routes.joinitys);
app.get('/joinitys/create', routes.joinitysCreate);
app.get('/joinitys/hobbies/hobbyName', routes.joinitysHobbiesHobby);
app.get('/joinitys/hobbies/joinityName', routes.joinitysHobbiesJoinity);
app.get('/joinitys/familyandfriends/joinityName', routes.joinitysFamilyandfriendsJoinity);
app.get('/joinitys/shoppings/joinityName', routes.joinitysShoppingsJoinity);
app.get('/joinitys/hobbies/joinityName/edit', routes.joinitysHobbiesJoinityEdit);
app.get('/joinitys/familyandfriends/joinityName/edit', routes.joinitysFamilyandfriendsJoinityEdit);
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
app.get('/user', routes.user);
app.get('/user/userName', routes.userUser);
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
