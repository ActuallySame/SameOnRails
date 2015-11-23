class CreateSames < ActiveRecord::Migration
  def change
    create_table :sames do |t|

      t.timestamps null: false
    end
  end
end
