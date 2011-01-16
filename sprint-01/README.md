# Sprint 01

### In this very first sprint we will:

* Create the project
* Create the application "Home" page (a starting point only, not the final version)
* Get it working

### Step by step guide:

1. Create the new application.


```
Microsoft Windows XP [Version 5.1.2600]
(C) Copyright 1985-2001 Microsoft Corp.
E:\_AA-GangsClock\1st-phase>rails new r3gc
      create
      create  README
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/mailers
      create  app/models
      create  app/views/layouts/application.html.erb
      create  test/performance/browsing_test.rb
      create  test/test_helper.rb
      create  test/unit
      create  tmp
      create  tmp/sessions
      create  tmp/sockets
      create  tmp/cache
      create  tmp/pids
      create  vendor/plugins
      create  vendor/plugins/.gitkeep
E:\_AA-GangsClock\1st-phase>cd r3gc
```

2. You can check the application structure

```console
E:\_AA-GangsClock\1st-phase\r3gc>tree
Folder PATH listing for volume Dados
Volume serial number is 5C89-E09F
E:.
+---app
¦   +---controllers
¦   +---helpers
¦   +---mailers
¦   +---models
¦   +---views
¦       +---layouts
+---config
¦   +---environments
¦   +---initializers
¦   +---locales
+---db
+---doc
+---lib
¦   +---tasks
+---log
+---public
¦   +---images
¦   +---javascripts
¦   +---stylesheets
+---script
+---test
¦   +---fixtures
¦   +---functional
¦   +---integration
¦   +---performance
¦   +---unit
+---tmp
¦   +---cache
¦   +---pids
¦   +---sessions
¦   +---sockets
+---vendor
    +---plugins
```

3. Start the server

```console
E:\_AA-GangsClock\1st-phase\r3gc>rails s
=> Booting WEBrick
=> Rails 3.0.3 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2011-01-12 00:38:06] INFO  WEBrick 1.3.1
[2011-01-12 00:38:06] INFO  ruby 1.9.2 (2010-08-18) [i386-mingw32]
[2011-01-12 00:38:06] INFO  WEBrick::HTTPServer#start: pid=3748 port=3000
```

4. Access and test the application using: http://0.0.0.0:3000;

   click the "About your application's environment" link,
   and You should get something like this:
![Project Environment](https://github.com/marcric/ror3gangsclock/wiki/rails_environment.png "Environment")

* Everything should work fine with no warnings.

5. Send a Ctrl-C to shutdown server

```console
[2011-01-15 11:59:59] INFO  going to shutdown ...
[2011-01-15 11:59:59] INFO  WEBrick::HTTPServer#start done.
Exiting
Terminate batch job (Y/N)? y

E:\_AA-GangsClock\sprint-01\r3gc>
```

6. Create the initial Home controller, with Index, About and Signin actions.

```console
E:\_AA-GangsClock\sprint-01\r3gc>rails g controller home index about signin
      create  app/controllers/home_controller.rb
       route  get "home/signin"
       route  get "home/about"
       route  get "home/index"
      invoke  erb
      create    app/views/home
      create    app/views/home/index.html.erb
      create    app/views/home/about.html.erb
      create    app/views/home/signin.html.erb
      invoke  test_unit
      create    test/functional/home_controller_test.rb
      invoke  helper
      create    app/helpers/home_helper.rb
      invoke    test_unit
      create      test/unit/helpers/home_helper_test.rb

E:\_AA-GangsClock\sprint-01\r3gc>
```

7. Start the server again.

```console
E:\_AA-GangsClock\1st-phase\r3gc>rails s
=> Booting WEBrick
.
.
.
```

8. Test each of the actions now available using:

```console
   http://localhost:3000/home/index
   http://localhost:3000/home/about
   http://localhost:3000/home/signin
```

9. They all should work displaying a "Find me in..." message in a rough page.

Since index is the default action, our work will start there.
Configure the routes turning the home/index the root page.
To do so, change the r3gc/config/routes.rb file to look like this:

```console
R3gc::Application.routes.draw do

  root :to => "home#index"
  get "home/index"

  get "home/about"

  get "home/signin"

end
```





