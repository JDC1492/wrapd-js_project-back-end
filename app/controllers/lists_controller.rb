class ListsController < ApplicationController
    before_action :set_list, only: [:show, :edit, :update, :destroy]

    def index
        @lists = List.all
        render json: @lists.to_json(include: {list_items: {except: [:created_at, :updated_at]}})
    end    

    def show
        if @list
            render json: @list.to_json(include: {list_items: {except: [:created_at, :updated_at]}})
        else
            render json: { message: "No list found with that ID"}
        end
    end
    
    def create
        @list = List.new(list_params)

        if @list.save
            render json: @list, status: :created, location: @piglet
        #   else
        #     render json: @list.errors, status: :unprocessable_entity
        end
    end

    def update
        
    end

    def destroy

    end


        private
    
        def set_list
        @list = List.find_by_id(params[:id])
        end
        
        def list_params
        params.require(:list).permit(:name)
        end

end

