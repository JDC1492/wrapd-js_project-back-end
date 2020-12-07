class ListItemsController < ApplicationController
        before_action :set_list_item, only: [:show, :update, :destroy]

    def index
        @list_items = ListItem.all
        render json: @list_items.to_json(include: [:list], except: [:updated_at, :created_at])
    end    

    def show
        render json: @list_item.to_json(include: [:list], except: [:updated_at, :created_at])
    end
    
    def create

    end

    def update
        
    end

    def destroy

    end

    private
    
    def set_list_item
        @list_item = ListItem.find_by(id: params[:id])
    end
        
    def list_item_params
        params.require(:list_item).permit(:item_name, :item_price, :item_link, :item_obtained)
    end

end

    

