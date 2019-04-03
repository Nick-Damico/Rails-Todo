class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save
      respond_to do |format|
        format.html { redirect_to lists_url }
        format.js 
      end
    else
      render :index
    end
  end

  def show
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :completed)
    end
end
