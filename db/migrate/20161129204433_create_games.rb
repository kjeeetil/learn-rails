class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :index
      t.timestamp :time
      t.integer :color
      t.integer :choice
      t.integer :result
      t.float :winrate

      t.timestamps null: false
    end
  end
end
