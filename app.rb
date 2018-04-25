require "sinatra"
require_relative "hangman.rb"

get '/' do
  	erb :game  
end

post '/letter' do
	@letter = params[:@letter]
erb :play, :locals => {:@letter => @letter}	
end

