var gulp = require('gulp');
var concat = require('gulp-concat');
var coffee = require('gulp-coffee');
var gutil = require('gulp-util');


gulp.task('default', function() {
  gulp.src('./public/coffee/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('maildc.js'))
    .pipe(gulp.dest('./public/src/'))
});

gulp.task('support', function() {
  gulp.src('./public/javascript/*.js')
    .pipe(concat('support.js'))
    .pipe(gulp.dest('./public/src/'))
});


gulp.task('spec', function() {
  gulp.src('./public/jasmine/spec/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('spec.js'))
    .pipe(gulp.dest('./public/jasmine/spec/'))
});


gulp.task('jsrc', function() {
  gulp.src('./public/jasmine/src/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(concat('source.js'))
    .pipe(gulp.dest('./public/jasmine/src/'))
});

