class ListsController < ApplicationController
  before_action :find_list, only: [ :show ]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    # we need `restaurant_id` to associate list with corresponding restaurant
    @list.save
    # redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
