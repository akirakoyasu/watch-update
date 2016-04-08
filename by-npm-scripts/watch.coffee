chokidar = require 'chokidar'
{spawn} = require 'child_process'

chokidar.watch './src/**/*.go', ignoreInitial: true
    .on 'all', (event, path) ->
        if event in ['add', 'change']
            console.log '\x1b[2J'
            spawn 'go', ['run', path], {stdio: 'inherit'}
