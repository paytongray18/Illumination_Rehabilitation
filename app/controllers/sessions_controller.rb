class SessionsController < ApplicationController

    def sign_in
        @administrator = Administrator.new
    end

    def create
        @administrator = Administrator.find_by(user_name: params[:administrator][:user_name])
        # byebug
            if @administrator && @administrator.authenticate(params[:administrator][:password])
                session[:id] = @administrator.id
                # byebug
                redirect_to '/administrators'
            else
                flash[:errors] = "Hello New Administrator, Please Enter Your Information"
                # byebug
                redirect_to '/sign_in'
            end
    end

    def destroy
        session.clear
        redirect_to '/sign_in'
    end

    private

    def administrator_params
        params.require(:administrator).permit(:user_name, :password)    
    end

end