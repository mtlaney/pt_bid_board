class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :price
      t.integer :miles
      t.belongs_to :adhoc

      t.timestamps null: false
    end
  end
end
