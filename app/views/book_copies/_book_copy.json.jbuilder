json.extract! book_copy, :id, :book_id, :copy_id, :created_at, :updated_at
json.url book_copy_url(book_copy, format: :json)
