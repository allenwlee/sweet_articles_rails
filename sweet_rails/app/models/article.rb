class Article < ActiveRecord::Base
  attr_accessible :title, :description, :url, :category_id
  has_and_belongs_to_many :tags
  belongs_to :category
end
