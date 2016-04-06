# Homepage (Root path)
require 'sinatra'
require 'json'

get '/' do
  erb :index
end

get "/contacts" do
	content_type :json
	Contact.all.to_json
end

post "/contacts" do
	@contact = Contact.new(params)
	@contact.save
end

post "/contacts/search" do
	content_type :json
	Contact.first.to_json	 #needs to be find, not .first ojo, change it sir.
end

