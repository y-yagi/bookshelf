collection :books do
  entity     Book
  repository BookRepository

  attribute :id,        Integer
  attribute :name,      String
  attribute :price,     String
  attribute :code,      String
  attribute :author_id, Integer
end

collection :authors do
  entity     Author
  repository AuthorRepository

  attribute :id,    Integer
  attribute :name,  String
end
