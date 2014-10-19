class AddnextRunTimeToScraper < ActiveRecord::Migration
  def change
    add_column(:scrapers, :next_run_time, :datetime, {index: true})
  end
end
