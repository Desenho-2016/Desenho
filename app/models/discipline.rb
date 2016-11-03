class Discipline < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :period
  composed_of :teacher
  composed_of :period
  has_many :mention
end
