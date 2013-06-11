class Tag < ActiveRecord::Base
  attr_accessible :title, :timestamps
  has_and_belongs_to_many :articles
end
