require 'spec_helper'

describe "assignments/index" do
  before(:each) do
    assign(:assignments, [
      stub_model(Assignment,
        :user => nil,
        :client => nil,
        :role => nil
      ),
      stub_model(Assignment,
        :user => nil,
        :client => nil,
        :role => nil
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 10
    assert_select "tr>td", :text => nil.to_s, :count => 10
    assert_select "tr>td", :text => nil.to_s, :count => 10
  end
end
