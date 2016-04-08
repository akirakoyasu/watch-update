gulp = require 'gulp'
{spawn} = require 'child_process'

gulp.task 'watch', () ->
    gulp.watch 'src/**/*.go', (event) ->
        if event.type in ['added', 'changed']
            console.log '\x1b[2J'
            spawn 'go', ['run', event.path], {stdio: 'inherit'}

gulp.task 'default', ['watch']
