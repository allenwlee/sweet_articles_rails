class Link < ActiveRecord::Base
  attr_accessible :url

  after_create :generate_short_url


  private

  def generate_short_url
    self.short_url = self.id.to_s(32)
    self.save!
  end
end
