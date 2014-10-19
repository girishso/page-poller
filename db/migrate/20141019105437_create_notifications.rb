class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :output
      t.references :scraper, index: true
      t.string :notification_type
      t.boolean :sent

      t.timestamps
    end
  end
end
