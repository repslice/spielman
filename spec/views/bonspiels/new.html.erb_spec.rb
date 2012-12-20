require 'spec_helper'

describe "bonspiels/new" do
  before(:each) do
    assign(:bonspiel, stub_model(Bonspiel,
      :name => "MyString",
      :end_date => ""
    ).as_new_record)
  end

  it "renders new bonspiel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bonspiels_path, :method => "post" do
      assert_select "input#bonspiel_name", :name => "bonspiel[name]"
      assert_select "input#bonspiel_end_date", :name => "bonspiel[end_date]"
    end
  end
end
