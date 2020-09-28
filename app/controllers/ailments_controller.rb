class AilmentsController < ApplicationController

    def index
        @ailments = Ailment.all
    end

    def show
        @ailment = Ailment.find(params[:id])
    end

end
