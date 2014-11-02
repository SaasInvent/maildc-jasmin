var gulp = require('gulp');
var clean = require('gulp-clean');
var coffee = require('gulp-coffee');
var concat = require('gulp-concat');
var size = require('gulp-filesize');
var less = require('gulp-less');
var minifyCSS = require('gulp-minify-css');
var uglify = require('gulp-uglify');
var gutil = require('gulp-util');


// client side

gulp.task('backbone', function() {
  return gulp.src(['./client/backbone/models/*.coffee',
                   './client/backbone/routes/*.coffee',
                   './client/backbone/views/*.coffee',
                   './client/backbone/templates/*.coffee'])
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('backbone.js'))
    .pipe(gulp.dest('./client/build/'));
});

gulp.task('startup', function() {
  return gulp.src('./client/backbone/backbone-startup.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('startup.js'))
    .pipe(gulp.dest('./client/build/'));
});

gulp.task('lib', function() {
  return gulp.src('./client/lib/*.js')
    .pipe(concat('lib.js'))
    .pipe(gulp.dest('./client/build/'));
});


gulp.task('dependencies', function () {  
    return gulp.src(['./client/lib/dependencies/jquery.js', './client/lib/dependencies/underscore.min.js',
                     './client/lib/dependencies/backbone-min.js',
                     './client/lib/dependencies/backbone-validation.js', 
                     './client/lib/dependencies/jquery-ui.js'])
      .pipe(concat('dependencies.js'))
      .pipe(gulp.dest('./client/build/'));
});


// less files

gulp.task('less', function () {  
    return gulp.src('./client/css/maildc.less')
        .pipe(less()) // Compile LESS
        .pipe(minifyCSS()) // Minify CSS
        .pipe(gulp.dest('./client/main/'));
});




// jasmine testing (without backbone-startup.js)

gulp.task('jasmine', ['jasfiles', 'dependencies', 
                      'lib',  'backbone'], function () {
      return gulp.src(['./client/build/dependencies.js', 
                     './client/build/lib.js', 
                     './client/build/backbone.js'])   
      .pipe(concat('main.js'))
      .pipe(size())     
     // .pipe(uglify())
      .pipe(gulp.dest('./client/jasmine/main/'));
});

gulp.task('jasfiles', function() {
  return gulp.src(['./client/jasmine/spec/*.coffee', './client/jasmine/src/*coffee'])
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('jasmine.js'))
    .pipe(gulp.dest('./client/jasmine/main/'));
});




// express server side

gulp.task('express-models', function () {
    return gulp.src('./server/models/*.coffee')
      .pipe(coffee({bare: true}).on('error', gutil.log))  
      .pipe(gulp.dest('./server/models/'));
});

gulp.task('express-modules', function () {
    return gulp.src('./server/modules/*.coffee')
      .pipe(coffee({bare: true}).on('error', gutil.log))  
      .pipe(gulp.dest('./server/modules/'));
});


gulp.task('express-routes', function() {
    return gulp.src('./server/routes/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./server/routes/'));
});



// compile : 1) default   

gulp.task('default', ['clean', 'less', 'dependencies', 
                      'lib',  'backbone', 'startup' ], function () {
      return gulp.src(['./client/build/dependencies.js', 
                     './client/build/lib.js', 
                     './client/build/backbone.js', 
                     './client/build/startup.js'])   
      .pipe(concat('main.js'))
      .pipe(size())     
     // .pipe(uglify())
      .pipe(gulp.dest('./client/main/'));
});


gulp.task('clean', function () {  
    return gulp.src('./client/build', {read: false})
    .pipe(clean());
});




