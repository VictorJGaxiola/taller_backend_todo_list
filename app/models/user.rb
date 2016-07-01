class User < ActiveRecord::Base
	validates :name, :lastname, :username, :email, presence: true
	validates :username, :email, uniqueness: true

	has_many :lists, dependent: :destroy
end