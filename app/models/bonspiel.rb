class Bonspiel
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  
  field :name, :type =>String
  field :start_date, :type => Date
  field :end_date, :type => Date
  embeds_many :teams
  accepts_nested_attributes_for :teams

  validates_presence_of :name
  validates :start_date, :date => { :before => :end_date, :message => "Start date must be before end date" }
  validates :end_date, :date => { :after => :start_date, :message => "End date must be after start date" }

end