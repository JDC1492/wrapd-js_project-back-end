class ListItemsController < ApplicationController
    before_action :set_list_item, only: [:show, :edit, :update, :destroy]

    def index
        
    end    

    def show

    end
    
    def create

    end

    def update
        
    end

    def destroy

    end

    private
    
    def set_list_item
        @list_items = ListItem.find_by_id(params[:id])
    end
        
    def list_item_params
        params.require(:list_item).permit(:item_name, :item_price, :item_link, :item_obtained)
    end

end

    

