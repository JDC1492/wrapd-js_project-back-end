class ListsController < ApplicationController
    before_action :set_list, only: [:show, :edit, :update, :destroy]

    def index
        lists = List.all
        render json: lists.to_json(include: [:list_items], except: [:updated_at])
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
    
    def set_list
        @list = List.find_by_id(params[:id])
    end
        
    def list_params
        params.require(:list).permit(:name)
    end

end

