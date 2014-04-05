require 'spec_helper'

describe "roles/new" do
  before(:each) do
    assign(:role, stub_model(Role,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do
      assert_select "input#role_name[name=?]", "role[name]"
    end
  end
end
