json.partial! 'events/event', event: @event

# json.assoc_fields_reg @assoc_fields[:registrations].map(&:inspect).join(', ')

if params[:registrations]
  json.registrations @matched_associations[:registrations] do |registration|
    json.partial! 'registrations/registration', registration: registration, registration_fields: @assoc_fields[:registrations]
  end
end

if params[:ticket_types]
  json.ticket_types @matched_associations[:ticket_types] do |ticket_type|
    json.partial! 'ticket_types/ticket_type', ticket_type: ticket_type, ticket_type_fields: @assoc_fields[:ticket_types]
  end
end
