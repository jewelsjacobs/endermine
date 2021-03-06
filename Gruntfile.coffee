# Generated on 2014-09-12 using generator-angular-bootstrap 0.4.3
"use strict"

# # Globbing
# for performance reasons we're only matching one level down:
# 'test/spec/{,*/}*.js'
# use this if you want to recursively match all subfolders:
# 'test/spec/**/*.js'
module.exports = (grunt) ->
  
  # Load grunt tasks automatically
  require("load-grunt-tasks") grunt
  
  # Define the configuration for all the tasks
  grunt.initConfig
    
    # Project meta
    pkg: require("./package.json")
    bower: require("./bower.json")
    meta:
      banner: "/**\n" + " * <%= pkg.name %>\n" + " * @version v<%= pkg.version %> - <%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + " * @link <%= pkg.homepage %>\n" + " * @author <%= pkg.author.name %> <<%= pkg.author.email %>>\n" + " * @license MIT License, http://www.opensource.org/licenses/MIT\n" + " */\n"

    
    # Project settings
    yo:
      
      # Configurable paths
      app: require("./bower.json").appPath or "app"
      dist: "dist"

    
    # Watches files for changes and runs tasks based on the changed files
    watch:
      
      # coffee: {
      #   files: ['<%= yo.app %>/scripts/{,*/}*.{coffee,litcoffee,coffee.md}'],
      #   tasks: ['newer:coffee:dist']
      # },
      coffeeTest:
        files: ["test/spec/{,*/}*.{coffee,litcoffee,coffee.md}"]
        tasks: [
          "newer:coffee:test"
          "karma"
        ]

      less:
        files: ["<%= yo.app %>/styles/{,*/}*.less"]
        tasks: [
          "less:dev"
          "autoprefixer"
        ]

      gruntfile:
        files: ["Gruntfile.js"]

      livereload:
        options:
          livereload: "<%= connect.options.livereload %>"

        files: [
          "<%= yo.app %>/*.html"
          "<%= yo.app %>/views/{,*/}*.html"
          ".tmp/styles/{,*/}*.css"
          ".tmp/scripts/{,*/}*.js"
          "<%= yo.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
        ]

    
    # The actual grunt server settings
    connect:
      options:
        port: 9000
        
        # Change this to '0.0.0.0' to access the server from outside.
        hostname: "localhost"
        livereload: 35729

      livereload:
        options:
          open: true
          base: [
            ".tmp"
            "<%= yo.app %>"
          ]

      test:
        options:
          port: 9001
          base: [
            ".tmp"
            "test"
            "<%= yo.app %>"
          ]

      dist:
        options:
          base: "<%= yo.dist %>"

    
    # Make sure code styles are up to par and there are no obvious mistakes
      coffeelint:
        app: [
          "app/scripts/**/*.coffee"
          "server/**/*.coffee"
          "./Gruntfile.coffee"
        ]
        options:
          coffeescript_error:
            level: "error"
          arrow_spacing:
            name: "arrow_spacing"
            level: "warn"
          no_tabs:
            name: "no_tabs"
            level: "error"
          no_trailing_whitespace:
            name: "no_trailing_whitespace"
            level: "warn"
            allowed_in_comments: false
            allowed_in_empty_lines: true
          max_line_length:
            name: "max_line_length"
            value: 100
            level: "warn"
            limitComments: true
          line_endings:
            name: "line_endings"
            level: "ignore"
            value: "unix"
          no_trailing_semicolons:
            name: "no_trailing_semicolons"
            level: "error"
          indentation:
            name: "indentation"
            value: 2
            level: "error"
          camel_case_classes:
            name: "camel_case_classes"
            level: "error"
          colon_assignment_spacing:
            name: "colon_assignment_spacing"
            level: "warn"
            spacing:
              left: 0
              right: 1
          no_implicit_braces:
            name: "no_implicit_braces"
            level: "ignore"
            strict: true
          no_plusplus:
            name: "no_plusplus"
            level: "ignore"
          no_throwing_strings:
            name: "no_throwing_strings"
            level: "error"
          no_backticks:
            name: "no_backticks"
            level: "error"
          no_implicit_parens:
            name: "no_implicit_parens"
            level: "ignore"
          no_empty_param_list:
            name: "no_empty_param_list"
            level: "warn"
          no_stand_alone_at:
            name: "no_stand_alone_at"
            level: "ignore"
          space_operators:
            name: "space_operators"
            level: "warn"
          duplicate_key:
            name: "duplicate_key"
            level: "error"
          empty_constructor_needs_parens:
            name: "empty_constructor_needs_parens"
            level: "ignore"
          cyclomatic_complexity:
            name: "cyclomatic_complexity"
            value: 10
            level: "ignore"
          newlines_after_classes:
            name: "newlines_after_classes"
            value: 3
            level: "ignore"
          no_unnecessary_fat_arrows:
            name: "no_unnecessary_fat_arrows"
            level: "warn"
          missing_fat_arrows:
            name: "missing_fat_arrows"
            level: "ignore"
          non_empty_constructor_needs_parens:
            name: "non_empty_constructor_needs_parens"
            level: "ignore"
    
    # Empties folders to start fresh
    clean:
      dist:
        files: [
          dot: true
          src: [
            ".tmp"
            "<%= yo.dist %>/*"
            "!<%= yo.dist %>/.git*"
          ]
        ]

      server: ".tmp"

    
    # Add vendor prefixed styles
    autoprefixer:
      options:
        browsers: ["last 1 version"]

      dist:
        files: [
          expand: true
          cwd: ".tmp/styles/"
          src: "{,*/}*.css"
          dest: ".tmp/styles/"
        ]

    
    # Automatically inject Bower components into the app
    wiredep:
      app:
        src: "<%= yo.app %>/index.html"
        options:
          cwd: ""
          dependencies: true
          devDependencies: false
          exclude: [
            "bower_components/jquery/jquery.js"
            "bower_components/bootstrap/dist/js/bootstrap.js"
          ]
          fileTypes: {}
          ignorePath: "<%= yo.app %>/"
          overrides: {}

    
    # Compiles CoffeeScript to JavaScript
    coffee:
      options:
        sourceMap: true
        sourceRoot: ""

      dist:
        files: [
          expand: true
          cwd: "<%= yo.app %>/scripts"
          src: "{,*/}*.coffee"
          dest: ".tmp/scripts"
          ext: ".js"
        ]

      test:
        files: [
          expand: true
          cwd: "test/spec"
          src: "{,*/}*.coffee"
          dest: ".tmp/spec"
          ext: ".js"
        ]

    
    # Compiles Less to CSS and generates necessary files if requested
    less:
      options: {}
      dist:
        options:
          dumpLineNumbers: false

        files: [
          expand: true
          cwd: "<%= yo.app %>/styles"
          src: "*.less"
          dest: ".tmp/styles"
          ext: ".css"
        ]

      dev:
        options:
          dumpLineNumbers: "comments"

        files: [
          expand: true
          cwd: "<%= yo.app %>/styles"
          src: "*.less"
          dest: ".tmp/styles"
          ext: ".css"
        ]

    
    # Renames files for browser caching purposes
    rev:
      dist:
        files:
          src: [
            "<%= yo.dist %>/scripts/{,*/}*.js"
            "<%= yo.dist %>/styles/{,*/}*.css"
            "<%= yo.dist %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
            "<%= yo.dist %>/styles/fonts/*"
          ]

    
    # Reads HTML for usemin blocks to enable smart builds that automatically
    # concat, minify and revision files. Creates configurations in memory so
    # additional tasks can operate on them
    useminPrepare:
      html: "<%= yo.app %>/index.html"
      options:
        dest: "<%= yo.dist %>"
        flow:
          html:
            steps:
              js: [
                "concat"
                "uglifyjs"
              ]
              css: ["cssmin"]

            post: {}

    
    # Performs rewrites based on rev and the useminPrepare configuration
    usemin:
      html: ["<%= yo.dist %>/{,*/}*.html"]
      css: ["<%= yo.dist %>/styles/{,*/}*.css"]
      options:
        assetsDirs: ["<%= yo.dist %>"]

    
    # The following *-min tasks produce minified files in the dist folder
    cssmin:
      options:
        root: "<%= yo.app %>"

    imagemin:
      dist:
        files: [
          expand: true
          cwd: "<%= yo.app %>/images"
          src: "{,*/}*.{png,jpg,jpeg,gif}"
          dest: "<%= yo.dist %>/images"
        ]

    svgmin:
      dist:
        files: [
          expand: true
          cwd: "<%= yo.app %>/images"
          src: "{,*/}*.svg"
          dest: "<%= yo.dist %>/images"
        ]

    htmlmin:
      dist:
        options:
          collapseWhitespace: true
          collapseBooleanAttributes: true
          removeCommentsFromCDATA: true
          removeOptionalTags: true

        files: [
          expand: true
          cwd: "<%= yo.dist %>"
          src: [
            "*.html"
            "views/{,*/}*.html"
          ]
          dest: "<%= yo.dist %>"
        ]

    ngAnnotate:
      dist:
        files: [
          expand: true
          cwd: ".tmp/concat/scripts"
          src: "*.js"
          dest: ".tmp/concat/scripts"
        ]

    # Replace Google CDN references
    cdnify:
      dist:
        html: ["<%= yo.dist %>/*.html"]

    
    # Copies remaining files to places other tasks can use
    copy:
      dist:
        files: [
          {
            expand: true
            dot: true
            cwd: "<%= yo.app %>"
            dest: "<%= yo.dist %>"
            src: [
              "*.{ico,png,txt}"
              ".htaccess"
              "*.html"
              "views/{,*/}*.html"
              "bower_components/**/*"
              "images/{,*/}*.{webp}"
              "fonts/*"
            ]
          }
          {
            expand: true
            cwd: ".tmp/images"
            dest: "<%= yo.dist %>/images"
            src: ["generated/*"]
          }
        ]

      styles:
        expand: true
        cwd: "<%= yo.app %>/styles"
        dest: ".tmp/styles/"
        src: "{,*/}*.css"

    
    # Run some tasks in parallel to speed up the build process
    concurrent:
      logConcurrentOutput: true
      limit: 10
      server: [
        "coffee:dist"
        "less:dev"
      ]
      test: [
        "coffee"
        "less"
      ]
      dist: [
        "coffee"
        "less:dist"
        "imagemin"
        "svgmin"
      ]

    
    # Test settings
    karma:
      options:
        configFile: "test/karma.conf.js"

      unit:
        singleRun: true

      server:
        autoWatch: true

  grunt.registerTask "serve", (target) ->
    if target is "dist"
      return grunt.task.run([
        "build"
        "connect:dist:keepalive"
      ])
    grunt.task.run [
      "clean:server"
      "wiredep"
      "concurrent:server"
      "autoprefixer"
      "connect:livereload"
      "watch"
    ]
    return

  grunt.registerTask "server", (target) ->
    grunt.log.warn "The `server` task has been deprecated. Use `grunt serve` to start a server."
    grunt.task.run ["serve:" + target]
    return

  grunt.registerTask "test", [
    "clean:server"
    "concurrent:test"
    "autoprefixer"
    "connect:test"
    "karma"
  ]
  grunt.registerTask "build", [
    "clean:dist"
    "wiredep"
    "useminPrepare"
    "concurrent:dist"
    "autoprefixer"
    "concat"
    "ngAnnotate"
    "copy:dist"
    "cssmin"
    "uglify"
    "rev"
    "usemin"
    "htmlmin"
  ]
  grunt.registerTask "default", [
    "coffeelint"
    "test"
    "build"
  ]
  return
