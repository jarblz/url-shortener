## Synopsis

This is an app that will shorten urls based on primary keys in the database

## Features/Usage
 - navigate to the root Url
 - enter a url to shorten
 - click submit
 - on the next page you will see the url, it's stats, and a copy button

## Tests

I only had time for 1 feature test but it provides about 50% test coverage:
- `rspec spec/features/shorten_url_spec.rb`

## Installation

1. Clone the repo
2. email me and ask for the .env file (jaredables@gmail.com)
3. rake db:create, migrate, and seed

## Features that were left out, as I didn't have time to finish them

  - More Tests
  - validations for the URLs being saved, make sure multiple urls cant be saved with the same value, etc
