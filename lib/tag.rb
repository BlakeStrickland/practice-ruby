class Tag < ActiveRecord::Base
  has_many :item_tags
  has_many :tags, through: :item_tags, foreign_key: :category_id

end
