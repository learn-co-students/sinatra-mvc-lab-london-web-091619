require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        latin =  PigLatinizer.new
        user_phrase = params[:user_phrase]
        @latinized = latin.piglatinize(user_phrase)
        erb :result
    end

end