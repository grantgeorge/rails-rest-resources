require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :description => "MyString",
      :registration_cap => 1,
      :walkins_enabled => false
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_description[name=?]", "event[description]"

      assert_select "input#event_registration_cap[name=?]", "event[registration_cap]"

      assert_select "input#event_walkins_enabled[name=?]", "event[walkins_enabled]"
    end
  end
end
