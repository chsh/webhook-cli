require 'uri'
require 'json'
require 'faraday'
require "webhook/cli/version"
require 'webhook/cli/poster'

module Webhook
  module CLI
    class InvalidURIError < StandardError; end
    class InvalidJSONPathError < StandardError; end
    class InvalidJSONError < StandardError; end
  end
end
