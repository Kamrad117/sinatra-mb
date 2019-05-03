# frozen_string_literal: true

require 'rspec'
# Run tests automatically
guard :rspec, cmd: 'bundle exec rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb') { 'spec' }
end

# Install gems automatically
guard :bundler do
  watch('Gemfile')
end

guard :rubocop do
  watch(/.+\.rb$/)
end
