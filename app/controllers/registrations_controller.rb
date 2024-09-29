class RegistrationsController <ApplicationController
    def new
        @login = Login.new
    end

    def create
        @login = Login.new(login_params)
        if @login.save 
            session[:login_id] = @login.id
            redirect_to root_path, notice: "Successfully created Account"
        else
            render :new
        end
    end

    private

    def login_params
        params.require(:login).permit(:email, :password, :password_confirmation)
    end
end