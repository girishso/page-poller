class ChangeDataTypeForOutput0 < ActiveRecord::Migration
  def change
    change_column :scrapers, :extract, :text
  end
end
