class MentionSoftwareDesign < ActiveRecord::Base
  include MentionCalculate
  attr_accessor :score1, :score2, :score3

  def calcular
    ((score1+score2)/2) * 0.8 + (score3 * 0.2)
  end
end
