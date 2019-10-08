class CreateViewersTable < ActiveRecord::Migration
    def change
      create_table :viewers do |t|
        t.string :name
        t.string :email
      end
    end
  end