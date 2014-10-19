class CreateScrapers < ActiveRecord::Migration
  def change
    create_table :scrapers do |t|
      t.string :name
      t.string :url
      t.string :target_element
      t.string :schedule
      t.datetime :last_check
      t.datetime :last_notification
      t.json :extract
      t.references :user, index: true
      t.integer :expected_update_period

      t.timestamps
    end
  end
end
