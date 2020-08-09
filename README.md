# StockCli

This Ruby Gem is a command line interface application to show the current state of the stock market updated daily. The user is able to see the best and worst performing stocks for the trading day, as well as information on a stock of their choice. The user is able to then build a custom portfolio of custom stock they are interested in via their recent searches.

## Installation

Add this line to your application's Gemfile:

ruby
gem 'stock_cli'


And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install stock_cli

## Usage

 - Upon installation, run the gem by inputing "/bin/executable"

 - The CLI will then commence. Prompting you to enter your name.

 - Once your name is entered, you will be greeted by name and given the option to:

    * See the best performing stock for the day.

    * See the worst performing stock for the day.

    * Search for a custom stock using the appropriate ticker symbol. NOTE: If you input a ticker that does not exist, the program will notify you.

    * See a list of recent searches. This will be considered your "Portfolio". The portfolio of stocks will tell you the companies you inquired about as well as their current share price.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github leonnoirsr>/stock_cli.

