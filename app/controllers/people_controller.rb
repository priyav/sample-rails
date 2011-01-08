class PeopleController < ApplicationController
  def index
     @users = User.all
  end
  
   def show
     @profile = User.where(:username=>params[:username]).first
   end
   
   def register
     @user = User.new(params[:user])
     if request.method == "POST"
       redirect_to('/') if @user.save
     end
   end
end
