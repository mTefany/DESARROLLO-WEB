var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var morgan = require('morgan');
var methodOverride = require('method-override');

var indexRouter = require('./routes/index');
var nosotrosRouter = require('./routes/nosotros');
var tradicionalRouter = require('./routes/tradicional');
var cakeRouter = require('./routes/cake');
var gomaRouter = require('./routes/goma');
var presupuestoRouter = require('./routes/presupuesto');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(methodOverride('_method'));

app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/nosotros', nosotrosRouter);
app.use('/presupuesto', presupuestoRouter);
app.use('/', indexRouter);
app.use('/tradicional', tradicionalRouter);
app.use('/cake', cakeRouter);
app.use('/add', cakeRouter);
app.use('/insert', tradicionalRouter);
app.use('/goma', gomaRouter);
app.use('/nuevo', gomaRouter);
module.exports = app;
