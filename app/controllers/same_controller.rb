class SameController < ApplicationController
	def index
		@same = Same.all
	end

	def new
		@same = Same.new
	end

	def create
		@same = Same.create same_params
		if @same.save
			redirect_to user_path(:id => current_user.id)
		else
			flash[:error] = @same.errors.full_messages.to_sentence
			redirect_to same_new_path
		end
	end

	private 
	def same_params
		params.require(:same).permit(:image)
	end


end
