class AdministratorsController < ApplicationController
    # before_action :
    
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
        # session[:user_name]
        @administrator = Administrator.new(ad_params)
        # if administrator.user_name ==  administrator.
        @administrator.save
        
        
        redirect_to administrator_path(@administrator)
    end             

    def edit
        @administrator = Administrator.find(params[:id])
    end

    def update
        @administrator = Administrator.find(params[:id])
        @administrator.update(ad_params)
        redirect_to administrator_path
    end

    def destroy
        @administrator = Administrator.find(params[:id])
        @administrator.destroy
        redirect_to administrators_path
    end

    private

    def ad_params
        params.require(:administrator).permit(:name,:user_name,:password,:status,:facility_id = nil)
    end





end
