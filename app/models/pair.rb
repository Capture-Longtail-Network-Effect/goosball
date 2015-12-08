class Pair < ActiveRecord::Base
  belongs_to :driver
  belongs_to :navigator
end
