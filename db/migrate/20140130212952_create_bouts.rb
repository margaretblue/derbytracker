class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.integer :referee_id
      t.string :league_id
      t.text :bout_date

      t.timestamps
    end
  end
end
