require 'sinatra'
require 'sendgrid-ruby'
include SendGrid
require_relative 'my_bakery.rb'

get '/' do
    erb :index
end


get '/products' do
    erb :products
end


get '/about' do
    erb :about
end


get '/cafe' do 
    erb :cafe
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
    params[:customer_name] == @customer_name
    params[:customer_email] == @customer_email
end