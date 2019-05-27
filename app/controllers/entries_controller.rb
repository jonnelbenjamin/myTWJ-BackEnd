class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def create
        Entry.create(strong_params)
    end

    def show
    end

    def update

    end

    def destroy
    end

    private

    def strong_params
        params.require(:entry).permit(:id, :description, :date_and_time, :user_id)
    end


end
