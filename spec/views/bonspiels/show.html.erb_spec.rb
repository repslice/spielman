require 'spec_helper'

describe "bonspiels/show" do
  before(:each) do
    @bonspiel = assign(:bonspiel, stub_model(Bonspiel,
      :name => "Name",
      :end_date => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
