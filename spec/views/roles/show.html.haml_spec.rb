require 'spec_helper'

describe "roles/show" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
