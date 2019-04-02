class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end
end
