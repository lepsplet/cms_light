class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|      
      t.references :category
      t.string :name, limit: 50, null: false
      t.timestamps
    end
  end
end
