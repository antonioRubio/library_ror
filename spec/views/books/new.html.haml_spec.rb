require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, FactoryGirl.build(:book))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select('select#book_author_id option[selected]').first['value']

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_year[name=?]", "book[year]"

      assert_select "input#book_available[name=?]", "book[available]"

      assert_select "input#book_section[name=?]", "book[section]"

      assert_select "input#book_shelf[name=?]", "book[shelf]"

      assert_select "input#book_order[name=?]", "book[order]"
    end
  end
end
