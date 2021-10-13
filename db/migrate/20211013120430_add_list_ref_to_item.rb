class AddListRefToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :list, :reference
  end
end
