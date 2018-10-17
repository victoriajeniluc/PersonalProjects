class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.timestamp :created_on
      t.timestamp :updated_on
      t.integer :likes, default: 0 

      t.timestamps
    end
  end
end
