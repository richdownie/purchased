class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.find:all
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.user_id = current_user
    if @purchase.save
      flash[:notice] = "Added Purchase"
      redirect_to purchases_path
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
