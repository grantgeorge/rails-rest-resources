# Rails

## Show example

Basic route:

    https://afternoon-woodland-1337.herokuapp.com/events/1

Using a list of fields:

    https://afternoon-woodland-1337.herokuapp.com/events/1?fields=name,description

Nesting a collection of an events registrations:

    https://afternoon-woodland-1337.herokuapp.com/events/1?fields=all&registrations=all&registration_fields=all

Specifying nested collection parameters:

    https://afternoon-woodland-1337.herokuapp.com/events/1?fields=all&registrations=all&registration_fields=first_name
