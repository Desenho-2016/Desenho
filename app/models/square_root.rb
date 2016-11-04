class SquareRoot < ActiveRecord::Base
  include MentionCalculate

  def calcular
    Math.sqrt(scorep1*scoret1*scoree1)
  end

end
