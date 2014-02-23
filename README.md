# Webhook::CLI

Webhook::CLIは、コマンドラインからwebhookを実行できるツールです。
rubyコード中でも使えます。

## Installation

Add this line to your application's Gemfile:

    gem 'webhook-cli'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webhook-cli

## Usage

~~~
$ webhook url json-file
~~~

This command posts payload=json-file-content to specified url.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
