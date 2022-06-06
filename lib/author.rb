require './lib/book'
class Author
  attr_reader :name,
              :first_name,
              :last_name,
              :books

  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @name = @first_name + " " + @last_name
    @books = []
  end

  def write(title, publication_date)
    data =           {author_first_name: @first_name,
                      author_last_name: @last_name,
                      title: title,
                      publication_date: publication_date}
    new_book =  Book.new(data)
    @books << new_book
    return new_book
  end
end