require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :description => "MyString",
      :registration_cap => 1,
      :walkins_enabled => false
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_description[name=?]", "event[description]"

      assert_select "input#event_registration_cap[name=?]", "event[registration_cap]"

      assert_select "input#event_walkins_enabled[name=?]", "event[walkins_enabled]"
    end
  end
end
