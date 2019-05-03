# frozen_string_literal: true

# spec/spec_helper.rb
require 'rack/test'
require 'rspec'
require 'tzinfo'
ENV['RACK_ENV'] = 'test'

require File.expand_path '../main.rb', __dir__

module Fixtures
  PAGES = %w[/homersimpson /covilha].freeze
end

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
