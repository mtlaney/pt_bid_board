class BidsController < ApplicationController


  def index
    @bids = Bid.all
  end

  def create
    @adhoc = Adhoc.find(params[:adhoc_id])
    @bid = @adhoc.bids.create(params[:bid].permit(:price, :miles))

    redirect_to adhoc_path(@adhoc)
  end

  def destroy
    @adhoc = Adhoc.find(params[:id])
    @bid = @adhoc.bids.find(params[:id])
    @bid.destroy

    redirect_to root_path
  end


end
