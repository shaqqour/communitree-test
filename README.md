# README

README FILE

Web Application PROJECT User post, assign services.

OVERVIEW


* This is a ruby on rails project. rbenv is 2.5.1

* System dependencies are 

    ruby '2.5.1'
    neccessary gems:
        # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
        gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
        # Use sqlite3 as the database for Active Record
        gem 'sqlite3', '~> 1.4'
        # Use Puma as the app server
        gem 'puma', '~> 4.1'
        # Use SCSS for stylesheets
        gem 'sass-rails', '>= 6'
        # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
        gem 'webpacker', '~> 4.0'
        # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
        gem 'turbolinks', '~> 5'
        # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
        gem 'jbuilder', '~> 2.7'
        # Use Redis adapter to run Action Cable in production
        # gem 'redis', '~> 4.0'
        # Use Active Model has_secure_password
        # gem 'bcrypt', '~> 3.1.7'

        # Use Active Storage variant
        # gem 'image_processing', '~> 1.2'

        # Reduces boot times through caching; required in config/boot.rb
        gem 'bootsnap', '>= 1.4.2', require: false

        #development
        # Call 'byebug' anywhere in the code to stop execution and get a debugger console
        gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
        gem 'omniauth'
        gem 'omniauth-facebook'
        gem 'dotenv-rails'
  
        # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
        gem 'web-console', '>= 3.3.0'
        gem 'listen', '>= 3.0.5', '< 3.2'
        # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
        gem 'spring'
        gem 'spring-watcher-listen', '~> 2.0.0'

        test
        # Adds support for Capybara system testing and selenium driver
        gem 'capybara', '>= 2.15'
        gem 'selenium-webdriver'
        # Easy installation and use of web drivers to run system tests with browsers
        gem 'webdrivers'

        # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
        gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

        gem "devise", "~> 4.7"

* SQLite was used in database creation

* There is no test suites running with this project, however, you are welcome to create test suite with rspec just make sure to include rspec gem in your dependencies.

* Git clone this project from the https://github.com/shaqqour/communitree repository.
* Start the server. You can use spring or rails server.
* Navigate to https://localhost:3000 on your browser. for best result use FireFox browser.
* Start by creating an account, once you login, you can place services and post them to other users to help you in these services. as well as you can help other users in their services by assigning a service to yourself.