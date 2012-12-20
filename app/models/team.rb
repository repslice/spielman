class Team
  include Mongoid::Document
  
  field :name, type: String
  field :club, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  embedded_in :bonspiel

  validates_presence_of :name
end
