require 'sinatra'
require 'sendgrid-ruby'
include SendGrid
require_relative './bakery.rb'

#homepage
get '/' do
    erb :index
end

#menu page
# get '/index/:id' do
#     if params[:id] == "menu"
#         puts "Todays specials #{:menu}"
#     elsif about == true
#         puts "Who we are"
#     elsif cafe == true
#         puts "Half price all items after 4pm!"
#     elsif home == true
#         puts "Homepage"
#     end
# end

#     erb :about
# end

#about page
get '/about' do
    erb :contact
end


#cafe
get '/cafe' do 
    erb :staff
end


get '/menu/:item' do 
    if params[:item] == "cake"
        erb :cake
    elsif params[:item] == "cookies"
        erb :cookie
    elsif params[:item] == "muffins"
        erb :muffins
    elsif params[:item] == "bread"
        erb :bread

    #     erb :index, :locals => {:x => "5"}
    end
end
