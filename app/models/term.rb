class Term < ActiveRecord::Base
  belongs_to :units
  attr_accessible :lang, :note, :segment, :unit_id
end
