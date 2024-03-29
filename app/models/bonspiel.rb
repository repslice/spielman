class Bonspiel
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  
  field :name, :type => String
  field :start_date, :type => Date
  field :end_date, :type => Date
  has_many :teams
  accepts_nested_attributes_for :teams, :allow_destroy => true

  validates_presence_of :name
  validates :end_date, :date => { :after => :start_date, :message => "End date must be greater than the start date" }

end
