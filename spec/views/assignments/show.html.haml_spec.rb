require 'spec_helper'

describe "assignments/show" do
  before(:each) do
    @assignment = assign(:assignment, stub_model(Assignment,
      :user => nil,
      :client => nil,
      :role => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
