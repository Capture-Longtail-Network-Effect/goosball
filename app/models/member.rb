class Member < ActiveRecord::Base
	validates :name, :role, :email, :github, presence: true
end
