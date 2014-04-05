require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
    end
  end
end
