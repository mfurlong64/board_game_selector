class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      # Model generated to hold saved search data
      t.string :username
      t.integer :player_count
      t.string :length
      t.string :wieght
      
      t.timestamps, null: false
    end
  end
end
