require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # puts params
    @reversed_string = params["string"].reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!

    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends

  end # get friends
end #class


# Intance Variables
# post '/reverse' do
#   original_string = params["string"]
#   @reversed_string = original_string.reverse
#
#   erb :reversed
# end
# We can now access the contents of @reversed_string inside of our view, reversed.erb.
#
# Note: Instance variables are ONLY passed from the controller method where they are created to the view that is rendered, not between controller methods. For example:
# get "/" do
#   @user = "Ian"
#
#   erb :index # @user will be defined as 'Ian' in the view
# end
#
# get "/profile" do
#   erb :profile # @user will be nil here
# end
#
# place     <h2><%= @reversed_string %></h2> in reversed.erb
