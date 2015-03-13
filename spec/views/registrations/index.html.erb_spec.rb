require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  before(:each) do
    assign(:registrations, [
      Registration.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :walk_in => false,
        :check_in => false,
        :event => nil
      ),
      Registration.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :walk_in => false,
        :check_in => false,
        :event => nil
      )
    ])
  end

  it "renders a list of registrations" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
