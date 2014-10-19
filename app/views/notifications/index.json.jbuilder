json.array!(@notifications) do |notification|
  json.extract! notification, :id, :output, :scraper_id, :notification_type, :sent
  json.url notification_url(notification, format: :json)
end
