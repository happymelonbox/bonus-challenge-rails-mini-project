class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name, limit: 20, default: '', null: false
      t.string :description, default: ''
      
      t.timestamps null: false
    end
  end
end