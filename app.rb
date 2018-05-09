require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  p = PigLatinizer.new
  binding.pry

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @converted_text = PigLatinizer.new(params[:user_phrase])

    erb :piglatinized
  end
end
