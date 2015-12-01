class HomeController < ApplicationController
	def index
		if current_user == nil 
			redirect_to new_user_session_path
		end
	end

	def subscribe
		puts "Hello"
		@sub = params[:sub]
		redirect_to :root
	end
end
