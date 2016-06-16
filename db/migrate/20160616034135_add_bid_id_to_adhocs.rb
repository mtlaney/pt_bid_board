class AddBidIdToAdhocs < ActiveRecord::Migration
  def change
    add_column :adhocs, :bid_id, :integer
  end
end
