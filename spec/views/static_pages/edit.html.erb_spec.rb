require 'spec_helper'

describe "static_pages/edit" do
  before(:each) do
    @static_page = assign(:static_page, stub_model(StaticPage))
  end

  it "renders the edit static_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => static_pages_path(@static_page), :method => "post" do
    end
  end
end
