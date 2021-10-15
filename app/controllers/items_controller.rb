class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def new
        @list = List.find(params[:list_id])
        @item = @list.items.build
    end

    def create
        @list = List.find(params[:list_id])
        @item = @list.items.create(item_params)
        if @item.save
            redirect_to list_path(@list)
        else
            render 'new'
        end
    end

    def show
        @item = Item.find_by_id(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
    end

    def destroy
        @item = Item.find(params[:id])
        @list = List.find(params[:list_id])
        @item.destroy
        redirect_to list_path(@list)
    end

    def update
        @list = List.find(params[:list_id])
        @item = Item.find(params[:id])
        if @item.update(items_params)
            redirect_to list_path(@list)
        else 
            render 'edit'
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :desciption, :quantity, :list_id)
    end


end
