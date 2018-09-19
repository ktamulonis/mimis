class Performance < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one_attached :image
  before_save :set_slug

  def set_slug
  	self.slug = self.name.downcase.gsub(" ", "_").gsub(',',"").gsub("#","").gsub("[^a-z0-9\s-]", "")
  end

  def to_param
    slug
  end

end
