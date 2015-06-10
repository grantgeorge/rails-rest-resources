json.partial! 'events/event', event: @event,
  event_fields: @event_fields

if params[:registrations]
  json.registrations @event.registrations.each do |registration|
    json.partial! 'registrations/registration', registration: registration,
    registration_fields: @assoc_fields[:registrations]
  end
end

if params[:ticket_types]
  json.ticket_types @event.ticket_types.each do |ticket_types|
    json.partial! 'ticket_typess/ticket_types', ticket_types: ticket_types,
    ticket_types_fields: @assoc_fields[:ticket_types]
  end
end
