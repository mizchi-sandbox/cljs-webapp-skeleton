gulp        = require 'gulp'
rename      = require 'gulp-rename'
plumber     = require 'gulp-plumber'
concat      = require 'gulp-concat'
sass        = require 'gulp-ruby-sass'
bowerFiles  = require "main-bower-files"
browserSync = require 'browser-sync'

gulp.task 'server', ->
  browserSync
    server:
      baseDir: "./public"

gulp.task 'reload', ->
  browserSync.reload stream: true

gulp.task 'vendor', ->
  gulp
    .src bowerFiles()
    .pipe plumber()
    .pipe concat('vendor.js')
    .pipe gulp.dest('./public')

gulp.task 'css', ->
  gulp
    .src 'src/styles/*.sass'
    .pipe plumber()
    .pipe sass(sourcemap: true)
    .pipe gulp.dest './public'

gulp.task 'watch', ['build', 'server'], ->
  gulp.watch 'src/styles/**/*.scss', ['css', 'reload']
  # gulp.watch 'bower_components/**/*.js', ['vendor', 'reload']

gulp.task 'build', ['vendor', 'css']
gulp.task 'default', ['build']
