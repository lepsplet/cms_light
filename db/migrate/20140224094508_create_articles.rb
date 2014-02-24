class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :subcategory
      t.string :article_name, limit: 150, null: false
      t.text :article_text, null: false
      t.timestamps
    end
  end
end
