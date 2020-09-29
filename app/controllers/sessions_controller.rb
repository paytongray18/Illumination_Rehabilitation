class SessionsController < ApplicationController

    def create
        sessions[administrator_id]
    end
end