class Discipline < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :period
  has_many :mention
end
