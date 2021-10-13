class AddItemRefToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :item, :ref
  end
end
