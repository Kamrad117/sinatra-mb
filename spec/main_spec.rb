# frozen_string_literal: true

# spec/main_spec.rb
require File.expand_path('spec_helper.rb', __dir__)

describe 'Main' do
  Fixtures::PAGES.each do |uri|
    describe uri.to_s do
      it 'should be accessible' do
        get uri
        expect(last_response).to be_ok
      end
    end
  end
end
