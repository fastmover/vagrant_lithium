module.exports = (grunt) ->
  cwd = __dirname

  #grunt.log.write('grunt\n')

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    compass:
      dev:
        options:
          cssPath: "public/framework/app/webroot/css"
          sassPath: "public/framework/app/webroot/sass"

    watch:
      compass:
#        files: "**/*.sass"
        files: "public/framework/app/webroot/**/*.sass"
        tasks: ["compass"]
        options:
          debounceDelay: 250


  # Load the plugin that provides the "uglify" task.
  #grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks "grunt-contrib-watch"

  # Default task(s).
  grunt.registerTask "default", ["compass"]