# Petname

[![Build Status](https://travis-ci.org/polamjag/petname-ruby.svg?branch=master)](https://travis-ci.org/polamjag/petname-ruby)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'petname'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install petname

## Usage

```ruby

require 'petname'

pn = PetName::Generator.new

# returns random name consisted of two words and separated with '-'
pn.generate # => e.g. "intercentral-parthenia"

# and you can specify separator and number of words
pn.generate separator: "!!!" # => e.g. "simulacral!!!sherika"
pn.generate words: 5 # => e.g. "theistically-subsuperficially-synaptically-metapneustic-nedra"
pn.generate separator: "**", words: 3 # => e.g. "ridiculously**nontypographical**jacque"

```

## Contributing

1. Fork it ( https://github.com/polamjag/petname/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgment

This gem is a Ruby port of [dustinkirkland/petname](https://github.com/dustinkirkland/petname).

