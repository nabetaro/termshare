require 'spec_helper'

describe "terms/show" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :unit_id => 1,
      :segment => "MyText",
      :lang => "Lang",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Lang/)
    rendered.should match(/MyText/)
  end
end
