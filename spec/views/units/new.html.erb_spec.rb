require 'spec_helper'

describe "units/new" do
  before(:each) do
    assign(:unit, stub_model(Unit,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path, :method => "post" do
      assert_select "textarea#unit_note", :name => "unit[note]"
    end
  end
end
