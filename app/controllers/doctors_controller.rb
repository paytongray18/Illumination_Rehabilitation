class DoctorsController < ApplicationController
    
    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
        # byebug
    end

    def new
        @doctor = Doctor.new
        @facilities = Facility.all
    end

    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.valid?
            @doctor.save
            # byebug
            redirect_to doctor_path(@doctor)
        else
            flash[:errors] = @doctor.errors.full_messages
            # byebug
            redirect_to new_doctor_path
        end
    end

    def edit
        @doctor = Doctor.find(params[:id])
        @facilities = Facility.all
    end

    def update
        @doctor = Doctor.find(params[:id])
        # byebug
        if @doctor.update(doctor_params)
            # @doctor.update(doctor_params)
            # byebug
            redirect_to doctor_path(@doctor)
        else
            flash[:errors] = @doctor.errors.full_messages
            # byebug
            redirect_to edit_doctor_path
        end
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
