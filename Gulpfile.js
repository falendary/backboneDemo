// Инициализируем плагины
var gulp    = require('gulp'), // Сообственно Gulp JS
    scss    = require('gulp-scss'), // Sass
    util    = require('gulp-util'),
    coffee  = require('gulp-coffee'); // coffee-script
    csso    = require('gulp-csso'), // Минификация CSS
    uglify  = require('gulp-uglify'), // Минификация JS
    concat  = require('gulp-concat'), // Склейка файлов
    connect = require('gulp-connect'); // http-сервер
 
// Собираем scss
gulp.task('scss', function () {
    gulp.src('./app/assets/scss/**/*.scss')
        .pipe(scss()) // Преобразуем в css
        .on('error', console.log) // Если есть ошибки, выводим и продолжаем
        .pipe(concat('style.css')) // склеиваем полученные css в style.css
        .pipe(gulp.dest('./public/css')) // отправляем в версию для разработки
        .pipe(connect.reload());
});
 
 // Собираем JS
 
gulp.task('js', function() {
    gulp.src([
            './app/models/*.coffee',  
            './app/controllers/*.coffee',
            './app/views/*.coffee',
            './app/app.router.coffee'
            ])
        .pipe(coffee({bare: true}))
        .on('error', console.log)
        .pipe(concat('app.min.js')) // Склеиваем JS
        .pipe(uglify())
        .pipe(gulp.dest('./public/js/'))
        .pipe(connect.reload()); // даем команду на перезагрузку страницы
});
 
// Локальный сервер для разработки
 
gulp.task('http-server', function() {
    connect.server(
	{
		root: 'build',
		livereload: true
	});
});
 
// Смотрим за изменениями
 
gulp.task('watch', function () {
	gulp.watch(['./app/assets/scss/**/*.scss'], ['scss']);
	gulp.watch(['./app/**/*.coffee'], ['js']);
});
 
// Запуск сервера разработки gulp watch
 
gulp.task('default', ['http-server', 'watch']);