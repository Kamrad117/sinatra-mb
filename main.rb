# frozen_string_literal: true

require 'sinatra'
require 'em/pure_ruby'

configure do
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :static, false
  set :server, :thin
  set :port, 80
  set :method_override, false
  set :environment, :production
end

get '/:uri' do
  @uri = params[:uri]

  case @uri
  when 'homersimpson'
    @title = 'mmm mm mm babe! mmm mm mm...'
    @keywords = 'homer simpson dance'
    erb :homer, layout: :default
  when 'covilha'
    @title = 'It\'s Covilha Time!!!'
    @keywords = 'local time in covilha portugal'
    tz = TZInfo::Timezone.get('Europe/Lisbon')
    @covilha_local_time = tz.to_local(Time.now).strftime('%H:%M:%S')
    erb :covilha, layout: :default
  end
end
