class ChangeDataTypeForOutput < ActiveRecord::Migration
  def change
    change_column :notifications, :output, :text
  end
end
