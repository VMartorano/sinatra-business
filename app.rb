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

  require 'sendgrid-ruby'

  # set the from, subject and to addresses
  from = SendGrid::Email.new(email: params[:from])
  subject = params[:subject]
  to = SendGrid::Email.new(email: params[:to])

  # set the content to send in the email
  content = SendGrid::Content.new(type: 'text/plain', value: params[:content])

  # set the mail attribute values
  mail = SendGrid::Mail.new(from, subject, to, content)

  # pass in the sendgrid api key
  sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])

  # send the email
  response = sg.client.mail._('send').post(request_body: mail.to_json)

  # display the response status code and body
  puts response.status_code
  puts response.body

  redirect "/contact"
  #you can use these params as input to an email form (subject, from to etc)

end
