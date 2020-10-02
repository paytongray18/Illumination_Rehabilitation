class PagesController < ApplicationController

    def home

    end

    def hallway
        @administrators = Administrator.all
        # byebug
        @administrator = Administrator.find(session[:id])
    end

    def light

    end

    def end
        
    end

    def deceased
        
    end
    
end