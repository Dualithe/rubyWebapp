require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowing = borrowings(:one)
  end

  test "should get index" do
    get borrowings_url
    assert_response :success
  end

  test "should get new" do
    get new_borrowing_url
    assert_response :success
  end

  test "should create borrowing" do
    assert_difference("Borrowing.count") do
      post borrowings_url, params: { borrowing: { borrowing_date: @borrowing.borrowing_date, copy_id: @borrowing.copy_id, reader_id: @borrowing.reader_id, return_date: @borrowing.return_date } }
    end

    assert_redirected_to borrowing_url(Borrowing.last)
  end

  test "should show borrowing" do
    get borrowing_url(@borrowing)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrowing_url(@borrowing)
    assert_response :success
  end

  test "should update borrowing" do
    patch borrowing_url(@borrowing), params: { borrowing: { borrowing_date: @borrowing.borrowing_date, copy_id: @borrowing.copy_id, reader_id: @borrowing.reader_id, return_date: @borrowing.return_date } }
    assert_redirected_to borrowing_url(@borrowing)
  end

  test "should destroy borrowing" do
    assert_difference("Borrowing.count", -1) do
      delete borrowing_url(@borrowing)
    end

    assert_redirected_to borrowings_url
  end
end
