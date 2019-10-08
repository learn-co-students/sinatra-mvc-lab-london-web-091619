require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    user_phrase = params[:user_phrase]
    pig = PigLatinizer.new
    @pig_phrase = pig.piglatinize(user_phrase)

    erb :pig_latinize
  end
end
