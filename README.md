# RollingPaper

A gem that allows you to interface with the [Leafly](http://www.leafly.com/) API. Gives you access to strain information including names, categories and descriptions. 

## Usage
The Rolling Paper gem makes it easier to consume the Leafly API. Leafly is a website that provides information about marijuana strains and stores. Their API documentation lives at http://www.leafly.com/api.

You can use Rolling Paper to easily find out about strains. You can get ratings, medical uses, and more. Here's how:

Strain.all_strains will give you back a JSON object containing information about all of the strains in the database.

Strain.all_key_names will give you back a list of the key names of the varieties in the database. This is a more compact way to see which strains are available.

Strain.find_by_key(key) will give you back the information about a particular strain. For example, you can try Strain.find_by_key('ak-47').

Strain.find_by_category(category) lets you filter the results down to Indica, Sativa, or Hybrid.

We hope you find it useful!

## Installation

Add this line to your application's Gemfile:

    gem 'rolling_paper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rolling_paper


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
