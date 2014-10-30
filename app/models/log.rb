class Log < ActiveRecord::Base
  belongs_to :scraper
  paginates_per 25
end
