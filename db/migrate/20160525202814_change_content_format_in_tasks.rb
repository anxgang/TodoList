class ChangeContentFormatInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :content, :string
  end
end
