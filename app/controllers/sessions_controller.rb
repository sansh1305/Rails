class SessionsController < ApplicationController
    
    def new
    end

    def create
        login = Login.find_by(email: params[:login][:email])
        if login.present? && login.authenticate(params[:login][:password])
          session[:login_id] = login.id
          redirect_to cruds_path, notice: "Logged in"
        else
          flash[:alert] = "Invalid email or password"
          puts "Params: #{params.inspect}"
          puts "Login: #{login.inspect}"
          render :new
        end
      end
      
      
    
    def destroy
        session[:login_id] = nil
        redirect_to root_path, notice: "Logged Out"
    end
end