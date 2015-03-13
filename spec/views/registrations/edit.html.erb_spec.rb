require 'rails_helper'

RSpec.describe "registrations/edit", type: :view do
  before(:each) do
    @registration = assign(:registration, Registration.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :walk_in => false,
      :check_in => false,
      :event => nil
    ))
  end

  it "renders the edit registration form" do
    render

    assert_select "form[action=?][method=?]", registration_path(@registration), "post" do

      assert_select "input#registration_first_name[name=?]", "registration[first_name]"

      assert_select "input#registration_last_name[name=?]", "registration[last_name]"

      assert_select "input#registration_walk_in[name=?]", "registration[walk_in]"

      assert_select "input#registration_check_in[name=?]", "registration[check_in]"

      assert_select "input#registration_event_id[name=?]", "registration[event_id]"
    end
  end
end
