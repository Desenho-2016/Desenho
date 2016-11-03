class Period < ActiveRecord::Base
  has_many :discipline
  composed_by :discipline
end
