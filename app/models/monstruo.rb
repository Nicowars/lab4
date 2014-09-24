class Monstruo < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
  has_many :victimas
  default_scope -> { order :nombre }
end
