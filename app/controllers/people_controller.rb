class PeopleController < ApplicationController
  def index
     @users = User.all
  end
  
   def show
     @xyz = User.where(:username=>params[:username]).first
   end
   
   def register
     if request.method == "POST"
       @user = User.new(params[:user])
       redirect_to('/') if @user.save
     end
   end
end
