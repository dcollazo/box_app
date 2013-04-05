class Fruit < ActiveRecord::Base
  belongs_to :box
  default_scope -> { order('created_at DESC') }
end
