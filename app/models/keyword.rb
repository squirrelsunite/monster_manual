class Keyword < ActiveRecord::Base
  has_and_belongs_to_many :monsters
  default_scope :order => "name"
end
