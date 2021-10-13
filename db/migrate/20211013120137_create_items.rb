class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.supermarket :brand
      t.string :brand

      t.timestamps
    end
  end
end
