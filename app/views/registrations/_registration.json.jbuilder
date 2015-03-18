json.set! :id, registration.id

registration.attributes.each do |key, value|
  json.set!(key, value) if (registration_fields.include?(key) || registration_fields[0]=="all")
end
json.url registration_url(registration, format: :json)
