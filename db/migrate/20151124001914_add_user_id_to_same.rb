class AddUserIdToSame < ActiveRecord::Migration
  def change
  	add_column :sames, :user_id, :integer
  end
end
