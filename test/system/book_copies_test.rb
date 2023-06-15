require "application_system_test_case"

class BookCopiesTest < ApplicationSystemTestCase
  setup do
    @book_copy = book_copies(:one)
  end

  test "visiting the index" do
    visit book_copies_url
    assert_selector "h1", text: "Book copies"
  end

  test "should create book copy" do
    visit book_copies_url
    click_on "New book copy"

    fill_in "Book", with: @book_copy.book_id
    fill_in "Copy", with: @book_copy.copy_id
    click_on "Create Book copy"

    assert_text "Book copy was successfully created"
    click_on "Back"
  end

  test "should update Book copy" do
    visit book_copy_url(@book_copy)
    click_on "Edit this book copy", match: :first

    fill_in "Book", with: @book_copy.book_id
    fill_in "Copy", with: @book_copy.copy_id
    click_on "Update Book copy"

    assert_text "Book copy was successfully updated"
    click_on "Back"
  end

  test "should destroy Book copy" do
    visit book_copy_url(@book_copy)
    click_on "Destroy this book copy", match: :first

    assert_text "Book copy was successfully destroyed"
  end
end
