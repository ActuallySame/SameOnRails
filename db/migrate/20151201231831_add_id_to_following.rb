class AddIdToFollowing < ActiveRecord::Migration
  def change
    add_column :followings, :a_id, :integer
    add_column :followings, :b_id, :integer
  end
end
