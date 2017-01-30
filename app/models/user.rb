class User < ApplicationRecord
  has_many :books

  ### Good
  belongs_to :favorite_book, class_name: "Book", optional: true

  ### Bad
  def least_favorite_book
    books.find_by(least_favorite: true)
  end

  def least_favorite_book=(book)
    books.update_all(least_favorite: false)
    book.update_attributes(least_favorite: true)
  end
end
