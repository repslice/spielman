require 'spec_helper'

describe "bonspiels/edit" do
  before(:each) do
    @bonspiel = assign(:bonspiel, stub_model(Bonspiel,
      :name => "MyString",
      :end_date => ""
    ))
  end

  it "renders the edit bonspiel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bonspiels_path(@bonspiel), :method => "post" do
      assert_select "input#bonspiel_name", :name => "bonspiel[name]"
      assert_select "input#bonspiel_end_date", :name => "bonspiel[end_date]"
    end
  end
end
