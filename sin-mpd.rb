require 'sinatra'
require 'librmpd'
require 'yaml'
require 'coffee-script'


before do
  config = YAML.load_file "#{Sinatra::Application.root}/config/mpd.yml"
  @mpd = MPD.new config['host'], config['port']
  @mpd.connect
end

post %r{/mpd/playback/(pause)} do |c|
  begin

    state = @mpd.send("#{c}d?")
    @mpd.send("#{c}=", !state)
  rescue
    @mpd.connect
    retry
  end
end

post %r{/mpd/playback/(play|stop|next|previous)} do |c|
  begin
    @mpd.send(c)
  rescue
    @mpd.connect
    retry
  end
end


get '/' do
  erb :index
end


# javascript coffeescript routes
get '/javascripts/*.js' do |js_file|
  coffee js_file.to_sym
end











