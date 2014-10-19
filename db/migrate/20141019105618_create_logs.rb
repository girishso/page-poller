class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :message
      t.references :scraper, index: true
      t.string :extra

      t.timestamps
    end
  end
end
