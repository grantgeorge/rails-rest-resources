json.set! :id, ticket_type.id

ticket_type.attributes.each do |key, value|
  json.set!(key, value) if (ticket_type_fields.include?(key) || ticket_type_fields[0]=="all")
end
json.url ticket_type_url(ticket_type, format: :json)
