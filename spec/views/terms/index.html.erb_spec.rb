require 'spec_helper'

describe "terms/index" do
  before(:each) do
    assign(:terms, [
      stub_model(Term,
        :unit_id => 1,
        :segment => "MyText",
        :lang => "Lang",
        :note => "MyText"
      ),
      stub_model(Term,
        :unit_id => 1,
        :segment => "MyText",
        :lang => "Lang",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of terms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Lang".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
