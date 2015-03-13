json.set! :id, @event.id
json.set! :name, @event.name if (@event_fields.include?('name') || @event_fields[0]=="all")
json.set! :description, @event.description if (@event_fields.include?('description') || @event_fields[0]=="all")
json.set! :registration_cap, @event.registration_cap if (@event_fields.include?('registration_cap') || @event_fields[0]=="all")
json.set! :walkins_enabled, @event.walkins_enabled if (@event_fields.include?('walkins_enabled') || @event_fields[0]=="all")
json.set! :start, @event.start if (@event_fields.include?('start') || @event_fields[0]=="all")
json.set! :end, @event.end if (@event_fields.include?('end') || @event_fields[0]=="all")
json.set! :updated_at, @event.updated_at if (@event_fields.include?('updated_at') || @event_fields[0]=="all")
json.set! :created_at, @event.created_at if (@event_fields.include?('created_at') || @event_fields[0]=="all")

json.event_fields @event_fields

json.registrations @registrations do |registration|
  json.set! :id, registration.id
  json.set! :first_name, registration.first_name if (@registration_fields.include?('first_name') || @registration_fields[0]=="all")
  json.set! :last_name, registration.last_name if (@registration_fields.include?('last_name') || @registration_fields[0]=="all")
end

json.registration_fields @registration_fields
