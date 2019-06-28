# Simple app for splitting up transactions into categories

Currently only supports importing data from Lloyds bank accounts and credit cards

## Setup

Add csv files to `resources/src/credit_card/` and `resources/src/current_account/`

    bundle install
    bundle exec rake build_csvs

This will install the gems, then create a single CSV for each type (`credit_card / current_account`) which is used for building transacation data. It will also strip out any duplicates incase the csvs overlap the same time period


## Tests

    bundle exec rspec

## Playing with the data

You can get an interactive console via `bundle exec bin/console` which will load all the data for you to view.


## TODO

Add a tag system to be able to view types of expense

  - Bills
  - Games
  - Subscriptions
  - Food shopping
  - Clothes shopping
  - Eating out
  - Misc

Add a frontend for viewing / generating graphs

  - Overall
  - Specific time periods
    - Weekly
    - Monthly
    - Quartly
    - Yearly

Be able to view how much money I've paid to a specific account

  - How much in a time periods / overall
  - How regularly I pay them
