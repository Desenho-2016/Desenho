class CommonAverage < ActiveRecord::Base
  include MentionCalculate
  attr_accessor :scorep1, :scorep2, :scopep3

  def calcular
    (scorep1+scorep2+scopep3)/3
  end

end
