# README

This is a basic application that queries the Zinc api and shows a policy for a guitar.

There is one page that shows the only product in the database (created in a migration along with information about the remote insurance policy).

Tests are located in the specs directory and can be run with the `rspec` command in the root directory.

Tests cover the models (products, zinc_remote_infos) and the ZincClient which queries the Zinc api (the api response is saved in the spec/fixtures/cassettes directory).

The insurance quote is fetched in the Products#index controller action before the page is served.

In order to get the tests set up, run the following:

`gem install bundler`

`bundle install`

`rake db:migrate`

`rails generate rspec:install`

`rake db:test:prepare`

To start the application, run `rails s` and navigate your web browser to http://localhost:3000.





