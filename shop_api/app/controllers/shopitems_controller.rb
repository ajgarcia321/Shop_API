class ShopitemsController < ApplicationController
  before_action :set_shopitem, only: [:show, :update, :destroy]

  # GET /shopitems
  def index
    @shopitems = Shopitem.all

    render json: @shopitems
  end

  # GET /shopitems/1
  def show
    render json: @shopitem
  end

  # POST /shopitems
  def create
    @shopitem = Shopitem.new(shopitem_params)

    if @shopitem.save
      render json: @shopitem, status: :created, location: @shopitem
    else
      render json: @shopitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shopitems/1
  def update
    if @shopitem.update(shopitem_params)
      render json: @shopitem
    else
      render json: @shopitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shopitems/1
  def destroy
    @shopitem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopitem
      @shopitem = Shopitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shopitem_params
      params.require(:shopitem).permit(:name, :image, :price, :stock, :description)
    end
end
