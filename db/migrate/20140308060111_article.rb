class Article < ActiveRecord::Migration
  def change
	  add_column( 'subcategories', 'body', :text )
  end
end
