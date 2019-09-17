# ASCII Cards

I've stumbled across a [stackexchange](https://codereview.stackexchange.com/questions/82103/ascii-fication-of-playing-cards) topic where people have been reviewing somebody's code to print ASCII cards.

I wanted it in Ruby, so I took it upon myself to implement a gem here

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ascii_cards'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ascii_cards

## Usage

A card is a tuple (array) of two or three parameters:

1. Rank (`2` to `10`, `:jack`, `:queen`, `:king`, `:ace`)
2. Suit (`:spades`, `:hearts`, `:clubs`, `:diamonds`)
3. (optional) `:hidden` if you want to print the back of the card

So if you want to print a queen of spades, you would use

```ruby
require 'ascii_cards'

ASCIICards.stringify([:queen, :spades])
```

It will return a string with this:

```
┌─────────┐
│Q        │
│         │
│         │
│    ♠    │
│         │
│         │
│        Q│
└─────────┘
```

If you want to print multiple cards in a row, pass an array of tuples:

```ruby

ASCIICards.stringify(
  [:queen, :spades],
  [10, :hearts]
)
```

```

┌─────────┐┌─────────┐
│Q        ││10       │
│         ││         │
│         ││         │
│    ♠    ││    ♥    │
│         ││         │
│         ││         │
│        Q││       10│
└─────────┘└─────────┘
```

If you want a hidden card, pass `:hidden` as the third element in a tuple:

```ruby

ASCIICards.stringify(
  [:queen, :spades],
  [10, :hearts, :hidden]
)
```

```
┌─────────┐┌─────────┐
│Q        ││░░░░░░░░░│
│         ││░░░░░░░░░│
│         ││░░░░░░░░░│
│    ♠    ││░░░░░░░░░│
│         ││░░░░░░░░░│
│         ││░░░░░░░░░│
│        Q││░░░░░░░░░│
└─────────┘└─────────┘
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Morozzzko/ascii_cards. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AsciiCards project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ascii_cards/blob/master/CODE_OF_CONDUCT.md).
