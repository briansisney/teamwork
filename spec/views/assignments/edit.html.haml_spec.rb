require 'spec_helper'

describe "assignments/edit" do
  before(:each) do
    @assignment = assign(:assignment, stub_model(Assignment,
      :user => nil,
      :client => nil,
      :role => nil
    ))
  end

  it "renders the edit assignment form" do
    render

    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do
      assert_select "input#assignment_user[name=?]", "assignment[user]"
      assert_select "input#assignment_client[name=?]", "assignment[client]"
      assert_select "input#assignment_role[name=?]", "assignment[role]"
    end
  end
end
