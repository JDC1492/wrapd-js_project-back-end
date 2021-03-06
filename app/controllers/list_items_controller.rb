class ListItemsController < ApplicationController
        before_action :set_list_item, only: [:show, :update, :destroy]

    def index
        if params[:list_id]
            @list = List.find(params[:show_id])
            @list_items = @list.list_items
        else
        @list_items = ListItem.all
    end 
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
    end

    def update
        if @list_item.update(list_item_params)
          render json: @list_item
        else
          render json: @list_item.errors, status: :unprocessable_entity
        end
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
