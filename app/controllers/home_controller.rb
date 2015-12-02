class HomeController < ApplicationController
	def index
		if current_user == nil 
			redirect_to new_user_session_path
		end
	end

	def subscribe
		puts "Hello"
		@new_f = Following.new
		@user_b = User.find_by username: params[:sub]
		@new_f.a_id = current_user
		@new_f.b_id = @user_b.id
		if @new_f.save
			puts "Success"
		else
			puts "Failure"
		end
		redirect_to :root
	end
end
