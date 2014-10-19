json.array!(@scrapers) do |scraper|
  json.extract! scraper, :id, :name, :url, :schedule, :last_check, :last_notification, :extract, :user_id
  json.url scraper_url(scraper, format: :json)
end
