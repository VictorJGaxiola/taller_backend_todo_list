class Task < ActiveRecord::Base
	belongs_to :list
	scope :published, -> { where(published: true) }
	scope :incomplete, -> { where(published: false) }
end
