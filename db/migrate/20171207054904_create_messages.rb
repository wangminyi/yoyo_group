class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :camp, index: true
      t.references :camper, index: true
      t.references :topic, index: true

      t.string :message_type
      t.text :content
      t.string :media_server_id
      t.string :media_path

      t.timestamps
    end
  end
end
