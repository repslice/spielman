require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :given_name => "MyString",
      :surname => "MyString",
      :home_club => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :delivering_hand => "MyString",
      :year_started_curling => 1,
      :notes => "MyText",
      :throwing_order => 1,
      :skip => false,
      :vice => false
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path, :method => "post" do
      assert_select "input#player_given_name", :name => "player[given_name]"
      assert_select "input#player_surname", :name => "player[surname]"
      assert_select "input#player_home_club", :name => "player[home_club]"
      assert_select "input#player_city", :name => "player[city]"
      assert_select "input#player_state", :name => "player[state]"
      assert_select "input#player_country", :name => "player[country]"
      assert_select "input#player_delivering_hand", :name => "player[delivering_hand]"
      assert_select "input#player_year_started_curling", :name => "player[year_started_curling]"
      assert_select "textarea#player_notes", :name => "player[notes]"
      assert_select "input#player_throwing_order", :name => "player[throwing_order]"
      assert_select "input#player_skip", :name => "player[skip]"
      assert_select "input#player_vice", :name => "player[vice]"
    end
  end
end
