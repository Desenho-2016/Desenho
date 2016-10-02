class Mention < ActiveRecord::Base
  belongs_to :discipline
  belongs_to :teacher
end
