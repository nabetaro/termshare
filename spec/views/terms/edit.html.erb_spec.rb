require 'spec_helper'

describe "terms/edit" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :unit_id => 1,
      :segment => "MyText",
      :lang => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terms_path(@term), :method => "post" do
      assert_select "input#term_unit_id", :name => "term[unit_id]"
      assert_select "textarea#term_segment", :name => "term[segment]"
      assert_select "input#term_lang", :name => "term[lang]"
      assert_select "textarea#term_note", :name => "term[note]"
    end
  end
end
