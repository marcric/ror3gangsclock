# Sprint 01

### In this very first sprint we will:

* Create the project
* Create the application "Home" page (a starting point only, not the final version)
* Get it working

### Step by step guide:

1. Create the new application.
```rails new r3gc```
<pre>
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
.
.
.
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
</pre>

2. Change to the application folder.
```cd r3gc```

3. You can check the application structure
```tree```

4. Start the server
```rails s```

5. Access and test the application using: http://0.0.0.0:3000;

   click the "About your application's environment" link,
   and You should get something like this:
![Project Environment](https://github.com/marcric/ror3gangsclock/wiki/rails_environment.png "Environment")

* Everything should work fine with no warnings.

6. Send a Ctrl-C to shutdown server

7. Create the initial Home controller, with Index, About and Signin actions.
```rails g controller home index about signin```

7. Start the server again.
```rails s```

8. Test each of the actions now available using:
```
   http://localhost:3000/home/index
   http://localhost:3000/home/about
   http://localhost:3000/home/signin
```

9. They all should work displaying a "Find me in..." message in a rough page.

* Since index is the default action, our work will start there.
* Configure the routes turning the home/index the root page.
* To do so, change the r3gc/config/routes.rb file to look like this:

<script src="https://gist.github.com/666277.js?file=camping_app02.rb"></script>




