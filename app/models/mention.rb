class Mention < ActiveRecord::Base
  belongs_to :discipline
  composed_by :discipline
end
