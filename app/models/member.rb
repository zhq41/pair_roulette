class Member < ActiveRecord::Base
  scope :by_name, -> {order('name ASC')}

  validates :name, presence: true
end
