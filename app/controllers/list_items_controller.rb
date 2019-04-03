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

  private
    def set_list
      @list = List.find(params[:list_id])
    end
end
