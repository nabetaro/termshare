require 'spec_helper'

describe "terms/new" do
  before(:each) do
    assign(:term, stub_model(Term,
      :unit_id => 1,
      :segment => "MyText",
      :lang => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terms_path, :method => "post" do
      assert_select "input#term_unit_id", :name => "term[unit_id]"
      assert_select "textarea#term_segment", :name => "term[segment]"
      assert_select "input#term_lang", :name => "term[lang]"
      assert_select "textarea#term_note", :name => "term[note]"
    end
  end
end
