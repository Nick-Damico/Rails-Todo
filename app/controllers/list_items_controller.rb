class ListItemsController < ApplicationController
  before_action :set_list
  def show; end

  def new
    @list_item = @list.list_items.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create    
    @list_item = @list.list_items.create(list_item_params)
    if @list_item.save
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end

    def list_item_params
      params.require(:list_item).permit(
        :name,
        :completed,
        :list_id
      )
    end
end
