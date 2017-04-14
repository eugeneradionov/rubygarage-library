# Author of the book
class Author
  attr_accessor :name, :biography

  def initialize(name, biography)
    @name = name
    @biography = biography
  end

  def to_s
    "Name: #{name}:\nBiography: #{biography}"
  end
end