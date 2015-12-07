class Member < ActiveRecord::Base
	validates :name, :role, :email, :github, presence: true
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
