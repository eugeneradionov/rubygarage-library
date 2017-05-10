module Seeds
  def self.seeds(lib_object)
    authors = []
    books = []
    10.times do
      author = Faker::Book.unique.author
      bio = 'Some biography.'
      title = Faker::Book.unique.title
      authors.push Author.new(author, bio)
      books.push Book.new(title, author)
    end

    readers = []
    30.times do
      name = Faker::Name.unique.name
      email = Faker::Internet.email(name)
      city = Faker::Address.city
      street = Faker::Address.street_name
      house = Faker::Address.building_number
      readers.push(Reader.new(name, email, city, street, house))
    end

    orders = []
    100.times do
      book_rnd = rand(10)
      reader_rnd = rand(30)
      orders.push Order.new(books[book_rnd], readers[reader_rnd])
    end

    lib_object.authors = authors
    lib_object.books = books
    lib_object.orders = orders
    lib_object.readers = readers
  end
end
