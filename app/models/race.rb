class Race < ActiveRecord::Base
  has_many :monsters
  default_scope :order => "name"
  validates :name, :description, :presence => true
  def to_s
    name
  end
end
