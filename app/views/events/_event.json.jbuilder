json.extract! event, :id, :name, :date, :time, :venue, :description, :category, :created_at, :updated_at
json.url event_url(event, format: :json)