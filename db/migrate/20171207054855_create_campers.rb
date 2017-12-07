class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.references :camp, index: true
      t.references :user, index: true
      t.string :role
      t.string :nickname

      t.datetime :joined_at
      t.datetime :last_speaked_at

      t.timestamps
    end
  end
end
