class AdministratorsController < ApplicationController

    before_action :authentification?, only: [:index, :show]
    
    def index
        @administrators = Administrator.all
        @facilities = Facility.all
        # byebug
    end

    def new
        @administrator = Administrator.new
    end
    
    def show 
        @administrator = Administrator.find(params[:id])
    end
    
    def create
        @administrator = Administrator.new(ad_params)
        if @administrator.save && params[:administrator][:password]
            # session[:id] = @administrator.id
            # byebug
            redirect_to '/sign_in'
        else
            flash[:errors] = @administrator.errors.full_messages
            # byebug
            redirect_to new_administrator_path
        end
    end  
    
    def authentification?  
        # byebug 
        if session[:id]
            @administrator = Administrator.find(session[:id])
        else
            redirect_to '/sign_in'
        end
    end

    def edit
        @administrator = Administrator.find(params[:id])
    end

    def update
        @administrator = Administrator.find(params[:id])
        if @administrator.update(ad_params)
            redirect_to administrator_path
        else
            flash[:errors] = @administrator.errors.full_messages
            redirect_to edit_administrator_path
        end
    end

    def destroy
        @administrator = Administrator.find(params[:id])
        @administrator.destroy
        redirect_to administrators_path
    end

    private

    def ad_params
        params.require(:administrator).permit(:name, :user_name, :password, :status)
    end

end
