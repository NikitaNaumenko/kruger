# Kruger
[![Build Status](https://travis-ci.org/NikitaNaumenko/kruger.svg?branch=master)](https://travis-ci.org/NikitaNaumenko/kruger)
[![Maintainability](https://api.codeclimate.com/v1/badges/4a4d18f954b765173a3a/maintainability)](https://codeclimate.com/github/NikitaNaumenko/kruger/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/4a4d18f954b765173a3a/test_coverage)](https://codeclimate.com/github/NikitaNaumenko/kruger/test_coverage)

Api client for [moi krug](https://moikrug.ru/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kruger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kruger

## Usage

With Kruger you can manipulate Moi Krug entities: Vacancies, Users, Companies, Skills, etc. More information [there](https://moikrug.ru/info/api)
Kruger have methods for each other endpoint.

### Auth configuration
Kruger uses env var for configuration `access_token`, so you can pass `access_token`  for client class. 

Required params: `access_token`.

Example:
```ruby
client = Kruger::Client.new(access_token: @access_token)
```


### Response

You can use methods `body` for get response body, `success?` for check successful response and `status` for check response status

Example:
```ruby
client.whoami.success?
true

client.whoami.body
{ "login"=>"naumenkoniki",
  "email"=>"naumenkoniki@gmail.com",
  "first_name"=>"Nikita",
  "last_name"=>"Naumenko",
  "middle_name"=>nil,
  "birthday"=>nil,
  "avatar"=>nil,
  "location"=>{"city"=>nil, "country"=>nil},
  "gender"=>"male"
}
client.whoami.status
200
```

### Endpoints

#### Vacancies

#### Users

#### Skills

#### Divisions

#### Companies

#### Cities


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kruger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Kruger project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/kruger/blob/master/CODE_OF_CONDUCT.md).
