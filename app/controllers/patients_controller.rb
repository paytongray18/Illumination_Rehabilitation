class PatientsController < ApplicationController


    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
        @doctors = Doctor.all
        @ailments = Ailment.all
    end

    def create
        @patient = Patient.new(pat_params)
        @patient.save
        redirect_to patient_path(@patient)
    end

    def edit
        @patient = Patient.find(params[:id])
        @doctors = Doctor.all
        @ailments = Ailment.all
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update(pat_params)
        redirect_to patient_path(@patient)
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        redirect_to patients_path
    end

    private

    def pat_params
        params.require(:patient).permit(:name, :age, :status, :location, :ailment_id, :doctor_id)
    end

end
