class Book
  include Lotus::Entity
  attributes :name, :price, :code, :author_id

  def author
    AuthorRepository.find(author_id)
  end
end
