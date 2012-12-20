require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :name => "MyString",
      :club => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString"
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_club", :name => "team[club]"
      assert_select "input#team_city", :name => "team[city]"
      assert_select "input#team_state", :name => "team[state]"
      assert_select "input#team_country", :name => "team[country]"
    end
  end
end
