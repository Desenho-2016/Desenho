class Discipline < ActiveRecord::Base
  belongs_to :teacher
  has_many :mention
end
