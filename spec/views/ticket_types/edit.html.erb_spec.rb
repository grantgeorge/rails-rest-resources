require 'rails_helper'

RSpec.describe "ticket_types/edit", type: :view do
  before(:each) do
    @ticket_type = assign(:ticket_type, TicketType.create!(
      :name => "MyString",
      :quantity => 1,
      :price => 1,
      :number_of_registrations => 1,
      :event => nil
    ))
  end

  it "renders the edit ticket_type form" do
    render

    assert_select "form[action=?][method=?]", ticket_type_path(@ticket_type), "post" do

      assert_select "input#ticket_type_name[name=?]", "ticket_type[name]"

      assert_select "input#ticket_type_quantity[name=?]", "ticket_type[quantity]"

      assert_select "input#ticket_type_price[name=?]", "ticket_type[price]"

      assert_select "input#ticket_type_number_of_registrations[name=?]", "ticket_type[number_of_registrations]"

      assert_select "input#ticket_type_event_id[name=?]", "ticket_type[event_id]"
    end
  end
end
