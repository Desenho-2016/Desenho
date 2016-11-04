class Period < ActiveRecord::Base
  has_many :discipline
  composed_of :discipline
end
