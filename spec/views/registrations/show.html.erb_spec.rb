require 'rails_helper'

RSpec.describe "registrations/show", type: :view do
  before(:each) do
    @registration = assign(:registration, Registration.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :walk_in => false,
      :check_in => false,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
