require 'sinatra'

# Define a route that responds to GET requests
get '/hello' do
  'Hello, World!'
end

# Define a route that accepts a parameter
get '/greet/:name' do
  "Hello, #{params[:name]}!"
end

# Define a route that responds to POST requests
post '/message' do
  "You sent a POST request with the message: #{params[:message]}"
end

# Run the Sinatra application
run!
