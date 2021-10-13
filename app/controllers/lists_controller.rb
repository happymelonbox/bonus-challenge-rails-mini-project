class ListsController < ApplicationController

    def index
        @lists = List.all
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.save
        redirect_to list_path(@list)
    end

    def show
        @list = List.find(params[:id])
    end

    def edit
        @list = List.find(params[:id])
    end

    def update
        @list = List.find(params[:id])
        @list.update(artist_params)
        redirect_to list_path(@list)
    end

    def destroy
        List.destroy(params[:id])
    end

    private

    def list_params
        params.require(:list).permit(:name)
    end

end
