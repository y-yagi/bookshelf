collection :books do
  entity     Book
  repository BookRepository

  attribute :id,         Integer
  attribute :title,      String
end

collection :authors do
  entity     Author
  repository AuthorRepository

  attribute :id,    Integer
  attribute :name,  String
end
