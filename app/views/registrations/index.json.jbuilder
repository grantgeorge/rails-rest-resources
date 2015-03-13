json.array!(@registrations) do |registration|
  json.extract! registration, :id, :first_name, :last_name, :walk_in, :check_in, :event_id
  json.url registration_url(registration, format: :json)
end
