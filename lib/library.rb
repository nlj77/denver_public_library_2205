require './lib/book'
require './lib/author'
class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end
end
