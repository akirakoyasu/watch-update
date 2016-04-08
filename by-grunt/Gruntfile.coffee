{spawn} = require 'child_process'

module.exports = (grunt) ->
    grunt.initConfig
        watch:
            files: ['src/**/*.go']
            options:
                event: ['added', 'changed']

    grunt.event.on 'watch', (action, filepath, target) ->
        console.log '\x1b[2J'
        spawn 'go', ['run', filepath], {stdio: 'inherit'}

    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'default', ['watch']
