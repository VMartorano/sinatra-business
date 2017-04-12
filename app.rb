require "sinatra"

get "/" do
  erb :home
end

get "/about" do
  erb :about
end

get "/gallery" do
  erb :gallery
end

get "/contact" do
  erb :contact
end

post "/form-response" do
  params.inspect

  #send email here...use the email.rb

  # this redirects to page user was on
  redirect '/contact'
end
