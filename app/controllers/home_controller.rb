class HomeController < ApplicationController
	def index
		if current_user == nil 
			redirect_to new_user_session_path
		else
			subs = Following.where(b_id: current_user.id)
			sub_ids = Array.new
			sub_ids.push(current_user.id)
			@sames = Array.new
			subs.each do |s|
				sub_ids.push(s.a_id)
			end
			Same.find_each do |a|
				if sub_ids.include? a.user_id
					@sames.push(a)
				end
			end
			puts "****************"
			puts @sames
		end
	end

	def subscribe
		puts "Hello"
		@new_f = Following.new
		@user_b = User.find_by username: params[:sub]
		if @user_b == nil
			flash[:error] = "Invalid Username"
			redirect_to :root
		else
			@new_f.a_id = current_user.id
			@new_f.b_id = @user_b.id
			if @new_f.save
				puts "Success"
			else
				puts "Failure"
			end
			redirect_to :root
		end
		
	end
end
