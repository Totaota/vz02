class UsersController < ApplicationController
   
   def show 
      @user = User.find(params[:id])
      @company = Company.find(params[:id])
   end
    
end