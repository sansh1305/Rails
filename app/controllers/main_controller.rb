class MainController < ApplicationController
    def index
      if session[:login_id]
        @login = Login.find(session[:login_id])
      end
    end
  end
  