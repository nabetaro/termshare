class Unit < ActiveRecord::Base
  has_meny :terms
  attr_accessible :note
end
