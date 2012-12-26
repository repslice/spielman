class Team
  include Mongoid::Document

  field :name, type: String
  field :club, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  belongs_to :bonspiel
  has_many :players
  accepts_nested_attributes_for :players
  
  validates_presence_of :name
end
