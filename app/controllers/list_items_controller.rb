class ListItemsController < ApplicationController
    before_action :set_list_item, only: [:show, :edit, :update, :destroy]

    def index
        list_items = ListItem.all
        render json: list_items.as_json(include: [:list])
    end    

    def show
        render json: list_items.as_json(include: [:list])
    end
    
    def create

    end

    def update
        
    end

    def destroy

    end

    private
    
    def set_list_item
        list_item = ListItem.find_by_id(params[:id])
    end
        
    def list_item_params
        params.require(:list_item).permit(:item_name, :item_price, :item_link, :item_obtained)
    end

end

    

