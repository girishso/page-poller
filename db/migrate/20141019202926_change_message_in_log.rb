class ChangeMessageInLog < ActiveRecord::Migration
  def change
    change_column :logs, :message, :text
  end
end
