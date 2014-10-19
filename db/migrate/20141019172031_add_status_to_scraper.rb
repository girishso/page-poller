class AddStatusToScraper < ActiveRecord::Migration
  def change
    add_column :scrapers, :status, :boolean, default: true
    add_column :scrapers, :send_sms, :boolean, default: false
  end
end
