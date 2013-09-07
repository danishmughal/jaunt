class CreateTripitems < ActiveRecord::Migration
  def change
    create_table :tripitems do |t|
      t.integer :trip_id
      t.string :description
      t.string :location
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
