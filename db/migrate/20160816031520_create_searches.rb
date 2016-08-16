class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      # Model generated to hold saved search data
      t.timestamps
    end
  end
end
