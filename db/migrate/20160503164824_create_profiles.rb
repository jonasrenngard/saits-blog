class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :profile_color
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
