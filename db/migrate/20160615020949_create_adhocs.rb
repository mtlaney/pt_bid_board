class CreateAdhocs < ActiveRecord::Migration
  def change
    create_table :adhocs do |t|
      t.string :orig
      t.string :depart
      t.string :dest
      t.string :arrive
      t.string :type_of_freight
      t.string :reason

      t.timestamps null: false
    end
  end
end
