# Crypto Mania

## This Project was build in 4 days during my time at Code Chrisalis Coding Bootcamp in Tokyo

Crypto Currency Portfolio app that let's you look up crypto quotes and price information and save it to a database.
Users can create an account and sign up, log in, add crypto currencies and coins, check current prices.

## Demo

Try it out yourself by [visiting the deployed version](https://crypto-mania.herokuapp.com).

### Installing

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Before you install Rails, you should check to make sure that your system has the proper prerequisites installed.

Open up a command line prompt. On macOS open Terminal.app, on Windows choose "Run" from your Start menu and type 'cmd.exe'. Any commands prefaced with a dollar sign \$ should be run in the command line. Verify that you have a current version of Ruby installed:

```
$ ruby -v
```

To install Rails, use the gem install command provided by RubyGems:

```
$ gem install rails
```

Fork this repository, clone it to your computer.
Run the following command to install the gems:

```
$ bundle install
```

To run migration use the following command:

```
$ rake db:migrate
```

When above setup is completed, you can start the aplication by writing:

```
$ rails server or bin/rails server
```
To stop the server use the folowing commands:
 ```
 Ctrl + C or Kill ruby on rails lsof -ti:3000 | xargs kill -9
 ```

## Built With

- [Ruby on Rails](https://rubyonrails.org/) - The web framework used

## Contributing

- **Fork it**
- **Create your feature branch** -(git checkout -b my-new-feature)
- **Commit your changes** -(git commit -am 'Add some feature')
- **Push to the branch** -(git push origin my-new-feature)
- **Create new Pull** Request

## Technologies Used

- [Ruby on rails](hhttps://github.com/rails/rails)
- [Devise](https://github.com/plataformatec/devise) For authentication and user login and more
- [Particle.j](https://github.com/VincentGarreau/particles.js/) - For creating the background prticles
- [Bootstrap-Sass](https://maven.apache.org/)
- [MySql](https://www.mongodb.com/) - For the database

## Authors

- **Florin Mavroian**  - [Mavroian](https://www.linkedin.com/in/florin-mavroian/) LinkedIn

## Acknowledgments

- [Code Chrysalis](https://www.codechrysalis.io/)
- [John Elder](https://codemy.com/)

