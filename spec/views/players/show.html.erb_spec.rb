require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Given Name/)
    rendered.should match(/Surname/)
    rendered.should match(/Home Club/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/Delivering Hand/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
