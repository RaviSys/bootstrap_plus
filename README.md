# BootstrapPlus
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bootstrap_plus'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install bootstrap_plus
```

## Usage
Include bootstarp_plus into your application:
```bash
$ rails generate bootstrap_plus:install 
```

Generate layout using bootstarp_plus for your application(default is application):
```bash
$ rails generate bootstrap_plus:layout application
```
Or 

```bash
$ rails generate bootstrap_plus:layout [LAYOUT_NAME_HERE]
```

Generate intractive bootstrap 4 views for your rails resources

```ruby
rails generate scaffold user first_name last_name email address city state country contact
```

```ruby
rails db:migrate
```

```ruby
rails generate bootstrap_plus:resource_view users
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
