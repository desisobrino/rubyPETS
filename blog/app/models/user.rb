class User < ApplicationRecord
	has_many :pets, dependent: :destroy
	validates_length_of :pets, maximum: 5
	validates :name, presence: true, length: { minimum: 2}
end
