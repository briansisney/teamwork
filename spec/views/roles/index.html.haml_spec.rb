require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role,
        :name => "Name"
      ),
      stub_model(Role,
        :name => "Name"
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
