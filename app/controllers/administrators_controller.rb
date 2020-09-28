class AdministratorsController < ApplicationController
    def index

        @administrators = Administrator.all
        @facilities = Facility.all
        # byebug
    end

    def show 
        @administrator = Administrator.find(params[:id])
    end
end
