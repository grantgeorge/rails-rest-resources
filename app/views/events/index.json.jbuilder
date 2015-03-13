json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :registration_cap, :walkins_enabled, :start, :end
  json.url event_url(event, format: :json)
end
