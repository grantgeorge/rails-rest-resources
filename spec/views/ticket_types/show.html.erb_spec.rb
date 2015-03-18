require 'rails_helper'

RSpec.describe "ticket_types/show", type: :view do
  before(:each) do
    @ticket_type = assign(:ticket_type, TicketType.create!(
      :name => "Name",
      :quantity => 1,
      :price => 2,
      :number_of_registrations => 3,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
