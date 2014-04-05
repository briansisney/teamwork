require 'spec_helper'

describe "assignments/new" do
  before(:each) do
    assign(:assignment, stub_model(Assignment,
      :user => nil,
      :client => nil,
      :role => nil
    ).as_new_record)
  end

  it "renders new assignment form" do
    render

    assert_select "form[action=?][method=?]", assignments_path, "post" do
      assert_select "input#assignment_user[name=?]", "assignment[user]"
      assert_select "input#assignment_client[name=?]", "assignment[client]"
      assert_select "input#assignment_role[name=?]", "assignment[role]"
    end
  end
end
