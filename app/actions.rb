# Homepage (Root path)
require 'sinatra'
require 'json'

get '/' do
  erb :index
end

get "/contacts" do
	content_type :json
	CONTACTS.to_json
end
