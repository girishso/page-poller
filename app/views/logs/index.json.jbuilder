json.array!(@logs) do |log|
  json.extract! log, :id, :message, :scraper_id, :extra
  json.url log_url(log, format: :json)
end
