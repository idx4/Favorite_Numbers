require "sinatra"


get '/' do	
	erb :get_name
end

post '/post_name' do
	name = params[:user_name]
	erb :location, :locals => {:name => name}
end

post '/location' do
	location=params[:user_location]
	name = params[:user_name]
"#{name} your location is #{location}."
end