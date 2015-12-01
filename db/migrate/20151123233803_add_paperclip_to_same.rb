class AddPaperclipToSame < ActiveRecord::Migration
  def change
  	add_attachment :sames, :image 
  end
end
