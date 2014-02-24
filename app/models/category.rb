class Category < ActiveRecord::Base
  belongs_to :primecategory
  has_many :subcategories
end
