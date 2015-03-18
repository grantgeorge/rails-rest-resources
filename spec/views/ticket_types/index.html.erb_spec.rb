require 'rails_helper'

RSpec.describe "ticket_types/index", type: :view do
  before(:each) do
    assign(:ticket_types, [
      TicketType.create!(
        :name => "Name",
        :quantity => 1,
        :price => 2,
        :number_of_registrations => 3,
        :event => nil
      ),
      TicketType.create!(
        :name => "Name",
        :quantity => 1,
        :price => 2,
        :number_of_registrations => 3,
        :event => nil
      )
    ])
  end

  it "renders a list of ticket_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
