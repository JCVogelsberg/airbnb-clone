class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def index
    @listings = Listing.all
  end

  def create
    @listing = Listing.new listing_params
    if @listing.save
      respond_to do |format|
        format.html do
         flash[:notice] = "Posting successful."
          redirect_to root_url
        end
        format.js
      end
    else
      flash[:alert] = "Posting failure. Please try again."
      render 'new'
    end
  end

  def edit
    @listing = Listing.find params[:id]
  end

  def show
    @listing = Listing.find params[:id]
  end

  def update
    @listing = Listing.find params[:id]
    if @listing.update listing_params
      respond_to do |format|
        format.html do
          flash[:notice] = "Edit successful."
          redirect_to root_url
        end
        format.js
      end
    else
      flash[:alert] = "Listing not updated. Please try again."
      render 'edit'
    end
  end














  def destroy
    @listing = Listing.find params[:id]
    if @listing.destroy
      respond_to do |format|
        format.html do
          flash[:notice] = "Listing has been deleted."
          redirect_to root_url
        end
        format.js
      end
    end
  end

private
  def listing_params
    params.require(:listing).permit(:address, :neighborhood, :city, :price, :home_type, :description)
  end
end
