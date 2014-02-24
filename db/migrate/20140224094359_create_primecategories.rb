class CreatePrimecategories < ActiveRecord::Migration
  def change
    create_table :primecategories do |t|
      
      t.string :name, limit: 30, null: false

      t.timestamps
    end
  end
end
