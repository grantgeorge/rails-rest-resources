json.set! :id, @event.id

@event.attributes.each do |key, value|
  json.set!(key, value) if (@event_fields.include?(key) || @event_fields[0]=="all")
end
