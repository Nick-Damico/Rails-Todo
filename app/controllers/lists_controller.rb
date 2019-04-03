class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]
  def index
    @lists = List.all
    respond_to do |format|
      format.html
      format.js { render :layout => 'fadein' }
    end
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
    respond_to do |format|
      format.html
      format.js { render :layout => 'fadein' }
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path }
      format.js
    end
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :completed)
    end
end
