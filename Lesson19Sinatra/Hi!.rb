require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	@login = params[:Login]
	@password = params[:Password]
	if @login == "admin" && @password == "admin"
		erb :welcome
	else
		erb :acc_den
	end
end