class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.datetime :arrive_time
      t.datetime :return_time
      t.string :destination
      t.integer :user_id
      
      t.timestamps
    end
  end
end