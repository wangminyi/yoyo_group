class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
    end

    create_join_table :tags, :camps do |t|
      t.index :tag_id
      t.index :camp_id
    end
  end
end
