class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|      
      t.references :primecategory
      t.string :name, limit: 30, null: false
      t.timestamps
    end
  end
end
