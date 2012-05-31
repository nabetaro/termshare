require 'spec_helper'

describe "units/show" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
