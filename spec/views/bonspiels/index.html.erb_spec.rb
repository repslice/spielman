require 'spec_helper'

describe "bonspiels/index" do
  before(:each) do
    assign(:bonspiels, [
      stub_model(Bonspiel,
        :name => "Name",
        :end_date => ""
      ),
      stub_model(Bonspiel,
        :name => "Name",
        :end_date => ""
      )
    ])
  end

  it "renders a list of bonspiels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
