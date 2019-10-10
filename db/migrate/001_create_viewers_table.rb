class CreateViewersTable < ActiveRecord::Migration
    def change
      create_table :viewers do |t|
        t.string :name
        t.string :email
        t.string :password_digest
      end
    end
  end