class Task < ActiveRecord::Base
	has_many :lists
	scope :published, -> { where(published: true) }
	scope :incomplete, -> { where(published: false) }
end
