require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

require_relative 'my_bakery.rb'

get '/' do
    erb :index
end


get '/index' do
    erb :index
end


get '/cake' do
    @cake = $friendly_bakery.cake
    erb :cake
end

get '/cookies' do
    @cookies = $friendly_bakery.cookies
    erb :cookies
end

get '/muffins' do
    @muffins = $friendly_bakery.muffins
    erb :muffins
end

get '/bread' do
    @bread = $friendly_bakery.bread
    erb :bread
end

get '/about' do
    erb :about
end


get '/products/:item' do 
    if params[:item] == "cake"
        erb :cake
    elsif params[:item] == "cookies"
        erb :cookies
    elsif params[:item] == "muffins"
        erb :muffins
    elsif params[:item] == "bread"
        erb :bread
    end
end


get '/mailing_list' do
    erb :mailing_list
end

post '/mailing_list' do
    @customer_name = params[:customer_name]
    @customer_email = params[:customer_email]

    from = Email.new(email: @customer_email)
    to = Email.new(email: 'ammuscarello@gmail.com')
    subject = 'Mailing List!'
    content = Content.new(type: 'text/plain', value: @customer_name)
    mail = Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    erb :mailing_list
end