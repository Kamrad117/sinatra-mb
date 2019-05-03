# frozen_string_literal: true

require 'sinatra'

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
