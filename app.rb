require "sinatra"

get "/" do
	# erb :home
	# send_file "home.html"
	"welcome to home page"
end

get "/about" do
	# erb :about
	"This is our first sinatra app"
end

get "/cat" do
   # send_file "cat.html"
   "talk about cats"
end

get "/cat2" do
  "<!DOCTYPE html><html><head><title>My Cat</title><style type=\"text/css\" media=\"screen\">img {width: 400px;}</style></head><body><h1>My Cat Page</h1><p>It's not actually my cat :(</p><img src=\"https://static.pexels.com/photos/127028/pexels-photo-127028.jpeg\"></body></html>"
end

get "/cat3" do
   send_file "cat.html"
   # "talk about cats"
end

get "/space" do
	"So you like space stuff? We should put a photo here"
end

get "/spacephoto" do
	"
	<html>
	
	</html>
	"
end

get '/roll-die' do
	"your number is  ...#{rand()}"
end

get "/greet/jordan" do
	"Welcome Mr. GIORDANO"
end

get "/greet/:name" do
	# "Hello there #{params[:name]}"
	name = params[:name].capitalize
	"Hello there #{name}"
end


get "/greet/:first/:last" do
	"Hello there #{params[:first]} #{params[:last]}"
end

# Math functions

get "/square/:x" do
	x = params[:x].to_i
	y = x*x
	"The square of your number is #{y}"
	
end







get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end