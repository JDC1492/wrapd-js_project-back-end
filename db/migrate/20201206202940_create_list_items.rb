class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.string :item_name
      t.float :item_price
      t.string :item_link
      t.boolean :item_obtained,  default: false
      t.belongs_to :list, null: false, foreign_key: true
      t.timestamps
    end
  end
end
