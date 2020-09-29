class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
        @doctor = Doctor.new
        @facilities = Facility.all
    end

    def create
        @doctor = Doctor.new(doctor_params)
        @doctor.save
        redirect_to doctor_path(@doctor)
    end

    def edit
        @doctor = Doctor.find(params[:id])
        @facilities = Facility.all
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctor.update(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to doctors_path
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :age, :specialty, :status, :facility_id)
    end

end
