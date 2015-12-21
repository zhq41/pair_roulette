class Pair < ActiveRecord::Base
  attr_accessor :member1, :member2

  validates :members, presence: true
  validates :status, presence: true
end
