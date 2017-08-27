# Ruby on Rails Tutorial sample application

This is a sample application based on the application from Michael Hartl's
[*Ruby on Rails Tutorial*](http://railstutorial.org/) with some slight modifications:

- Uses rspec instead of minitest for testing
- Uses postgresql for all databases, not just production

## Getting started

To get started, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ bin/rails db:migrate
```

Finally, run rspec to verify that everything is working correctly:

```
$ bundle exec rspec
```

You can take a look at the application by running:

```
$ bin/rails server
```
(browse to localhost:3000 to view the site)
