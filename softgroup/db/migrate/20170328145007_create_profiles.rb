class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :phone
      t.text :about
      t.integer :user_id
      t.timestamps
    end
  end
end
