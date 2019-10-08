require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_text = PigLatinizer.new
    @pl = pig_text.piglatinize(params[:user_phrase])
    erb :results
  end
end
