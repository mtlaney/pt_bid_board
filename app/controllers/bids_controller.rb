class BidsController < ApplicationController
  def create
    @adhoc = Adhoc.find(params[:adhoc_id])
    @bid = @adhoc.bids.create(params[:bid].permit(:price, :miles))

    redirect_to adhoc_path(@adhoc)
  end

  def destroy
    @adhoc = Adhoc.find(params[:adhoc_id])
    @bid = @adhoc.bids.find(params[:id])
    @bid.destroy

    redirect_to root_path
  end


end
