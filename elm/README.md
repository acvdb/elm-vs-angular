# elm
Project for presentation purposes of Elm.

## How to build project
Run `elm-make` in elm-vs-angular/elm/   
Run `elm-reactor` to start server

## Basic Elm info

### Command-line tools
* elm-repl (read-eval-print-loop)— play with Elm expressions 
    - compiles elm to javascript, so nodejs should be installed
* elm-reactor — get a project going quickly
    - starts server, navigate through any file
    - it has Elm debug mode enabled by default
* elm-make — compile Elm code directly
    - building projects
* elm-package — download packages
    - usage is similar to npm
    - adds dependencies to elm-package.json
    - some commands: install / publish / bump / diff

Additional:
* elm-format: open source project
* elm-test: open source project
* elm-css: open source project
    - type checking of css!

### Semver (semantic versioning)
Elm is able to calculate and enforce semantic versioning. It consists of 3 numbers separated by periods:
1. Major: API is changed
2. Minor: something has been added, nothing existing has changed
3. Patch: something has changed that doesn't affect the API (e.g. documenation)

You can ask elm-package what your version number will be, and it tells you why:
`elm-package diff`

### Notes
 * HTML to ELM website
 * some keys in elm-package.json are obligatory (such as exposed-modules)
