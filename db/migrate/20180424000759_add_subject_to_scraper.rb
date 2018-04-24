class AddSubjectToScraper < ActiveRecord::Migration
  def change
    add_column :scrapers, :subject, :string
  end
end
