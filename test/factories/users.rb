FactoryGirl.define do
  factory :user do
    transient { book_count 5 }
    books { create_list(:book, book_count) }
    favorite_book { books.last }
  end
end
