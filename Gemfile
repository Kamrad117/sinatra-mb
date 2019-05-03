# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.0'

gem 'sinatra', '~> 2.0.5'
gem 'thin'
gem 'tzinfo'

group :development, :test do
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rack-test'
  gem 'rspec'
  gem 'rubocop'
  gem 'rubocop-performance'
end

group :production do
  gem 'prometheus_exporter', '~> 0.4.9'
end
