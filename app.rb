
require "sinatra"
require_relative 'hangman.rb'
get '/' do
    redirect '/get_game'
end


get '/get_game' do 
	erb :game
end
	
post '/get_letter' do
	letter = params[:letter]
	erb :hangman, :locals => {:letter => letter}
end

