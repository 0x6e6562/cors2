require 'sinatra'
require 'json'

configure do
  set :protection, :except => [:json_csrf]
end

get '/' do
  "Hello World"
end

post '/blah' do
  headers 'Access-Control-Allow-Origin' => '*', 'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS'
  
  content_type :json
  {:x => 2, :hello => params[:hello]}.to_json
end
