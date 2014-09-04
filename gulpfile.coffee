require('coffee-script/register')
gulp = require 'gulp'
gutil = require 'gulp-util'
# misc
cond  = require 'gulp-if'
clean = require 'gulp-clean'

webserver = require 'gulp-webserver'
# compilers
uglify = require 'gulp-uglify'
coffee = require 'gulp-coffee'
jade = require 'gulp-jade'
stylus = require 'gulp-stylus'
plumber = require 'gulp-plumber'
mocha = require 'gulp-mocha'
seq = require 'run-sequence'
# coffee compile
pathCoffee = 'coffee/**/*.coffee'
pathCoffeeMod = 'modules/tja/coffee/*.coffee'

# server
gulp.task 'webserver', ->
  gulp.src('app')
    .pipe(webserver({
      livereload: true}))
# watch
gulp.task 'watch', ->
  gulp.watch pathCoffee, ->
    seq 'coffee'
  gulp.watch 'jade/**/*.jade',->
    seq 'jade'
  gulp.watch 'styl/**/*.styl',->
    seq 'stylus'
# coffee compile
gulp.task 'coffee',(done) ->
  gulp.src pathCoffee
    .pipe(plumber())
    .pipe coffee() .on 'error', gutil.log
    .pipe gulp.dest 'app/js/'
    done()
# jade compile
gulp.task 'jade',(done)->
  gulp.src 'jade/**/*.jade'
    .pipe(plumber())
    .pipe(jade({pretty: true}))
    .pipe(gulp.dest('app'))
    done()
# stylus compile
gulp.task 'stylus', (done)->
  gulp.src 'styl/**/*.styl'
    .pipe(stylus())
    .pipe(gulp.dest('app/css/'))
# Test
gulp.task 'test',->
  gulp.src 'test/**/*.coffee', {read: false}
  .pipe(mocha({reporter: 'nyan'}))


gulp.task('default',['webserver','watch'])
