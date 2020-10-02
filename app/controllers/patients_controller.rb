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
        if @patient.valid?
            @patient.save
            redirect_to patient_path(@patient)
        else
            flash[:errors] = @patient.errors.full_messages
            redirect_to new_patient_path
        end
    end

    def edit
        @patient = Patient.find(params[:id])
        @doctors = Doctor.all
        @ailments = Ailment.all
    end

    def update
        @patient = Patient.find(params[:id])
        if  @patient.update(pat_params) 
            redirect_to patient_path(@patient)
        else
            flash[:errors] = @patient.errors.full_messages
            # byebug
            redirect_to edit_patient_path
        end
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
