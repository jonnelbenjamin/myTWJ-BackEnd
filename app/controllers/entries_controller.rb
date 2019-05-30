class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def create
       @entry = Entry.create(strong_params)
    end

    def show
        render json: Entry.find(params[:id])
    end

    def update

    end

    def destroy
        render json: Entry.find(params[:id]).destroy
    end

    private

    def strong_params
        params.require(:entry).permit(:id, :description, :date_and_time, :user_id)
    end


end
