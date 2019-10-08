class CreateShowsTable < ActiveRecord::Migration
    def change
      create_table :shows do |t|
        t.string :name
        t.integer :viewer_id
      end
    end
  end