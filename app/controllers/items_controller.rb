class ItemsController < ApplicationController
  before_filter :require_user 
  
  def index
    @items = Item.find:all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    @item.user_id = current_user
    if @item.save
      flash[:notice] = "Added Item"
      redirect_to items_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
