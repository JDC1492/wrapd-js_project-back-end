class ListItemsController < ApplicationController
        before_action :set_list_item, only: [:show, :update, :destroy]

    def index
        @list_items = ListItem.all
        render json: @list_items.to_json(include: [:list], except: [:updated_at, :created_at])
    end    

    def show
        if @list_item
            render json: @list_item.to_json(include: [:list], except: [:updated_at, :created_at])
        else
            render json: { message: "No list item found with that ID"}
        end
    end
    
    def create
        @list_item = ListItem.new(list_item_params)
        if
            render json: @list_item, status: :created, location: @list_item
        else
            render json: @list_item.errors, status: :unprocessable_entity
    end

    def update
        
    end

    def destroy
        @list_item.destroy

    end

    private
    
    def set_list_item
        @list_item = ListItem.find_by(id: params[:id])
    end
        
    def list_item_params
        params.require(:list_item).permit(:item_name, :item_price)
    end

end

    

