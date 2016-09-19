class Discipline < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :period
end
