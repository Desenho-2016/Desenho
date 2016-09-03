class Discipline < ActiveRecord::Base

validates_presence_of :disciplineName, :disciplineFlux, :disciplineRevews, :rating
validates_length_of :disciplineName, :maximum => 40, :allow_blank => false
validates_uniqueness_of :disciplineName
end
