class Following < ActiveRecord::Base
	belongs_to :user_a, class_name: :User, foreign_key: :a_id
	belongs_to :user_b, class_name: :User, foreign_key: :b_id
	validates_uniqueness_of :user_a, :scope => [:user_b]
end
