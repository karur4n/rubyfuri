# Rubyfuri

漢字かな交じり文に、ひらがなとローマ字のふりがな（ルビ）を付けます。

[テキスト解析:ルビ振り - Yahoo!デベロッパーネットワーク](http://developer.yahoo.co.jp/webapi/jlp/furigana/v1/furigana.html) を使用します。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubyfuri'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubyfuri

## Usage

``YOUR APP ID`` は Yahoo!デベロッパーネットワークの アプリケーション ID です。

```ruby
rubyfuri = Rubyfuri::Client.new('YOUR APP ID')

rubyfuri.furu('大きな空')
#=> 'おおきなそら'

rubyfuri.furu(['広い', '日光', '時計'])
#=> ['ひろい', 'にっこう', 'とけい']
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/karur4n/rubyfuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
