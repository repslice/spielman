require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :given_name => "Given Name",
        :surname => "Surname",
        :home_club => "Home Club",
        :city => "City",
        :state => "State",
        :country => "Country",
        :delivering_hand => "Delivering Hand",
        :year_started_curling => 1,
        :notes => "MyText",
        :throwing_order => 2,
        :skip => false,
        :vice => false
      ),
      stub_model(Player,
        :given_name => "Given Name",
        :surname => "Surname",
        :home_club => "Home Club",
        :city => "City",
        :state => "State",
        :country => "Country",
        :delivering_hand => "Delivering Hand",
        :year_started_curling => 1,
        :notes => "MyText",
        :throwing_order => 2,
        :skip => false,
        :vice => false
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Home Club".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Delivering Hand".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
