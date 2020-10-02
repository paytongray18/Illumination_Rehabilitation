class FacilitiesController < ApplicationController
    def index
        @facilities = Facility.all
    end

    def show
        @facility = Facility.find(params[:id])
    end

    def edit
        @facility = Facility.find(params[:id])
        @administrators = Administrator.all
    end

    def update
        @facility = Facility.find(params[:id])
        @facility.update(facility_params)
        redirect_to facility_path(@facility)
    end

    private

    def facility_params
        params.require(:facility).permit(:status)
    end

end
