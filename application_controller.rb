require_relative 'config/environment'


require 'bundler'
Bundler.require
class MyApp < Sinatra::Base

  get '/' do
    erb :tasks
  end
  post '/tasks' do

  @user_task= params[:name]
  @user_time= params[:TimeDue]
  @user_class= params[:Class]

  erb :tasks
  end
end
