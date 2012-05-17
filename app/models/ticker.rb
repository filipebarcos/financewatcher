class Ticker < ActiveRecord::Base
  attr_accessible :name, :code

  has_and_belongs_to_many :configurations

  validates_presence_of :code
end