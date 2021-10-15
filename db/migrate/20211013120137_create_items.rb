class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :name, limit: 20, default: '', null: false
      t.string  :description, default: ''
      t.integer :quantity, default: 0, null: false
      t.integer :list_id
      
      t.timestamps null: false
    end
  end
end
