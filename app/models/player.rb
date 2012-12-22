class Player
  include Mongoid::Document
  field :given_name, type: String
  field :surname, type: String
  field :home_club, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :delivering_hand, type: String
  field :year_started_curling, type: Integer
  field :notes, type: String
  field :throwing_order, type: Integer
  field :skip, type: Boolean
  field :vice, type: Boolean

  belongs_to :team
end
