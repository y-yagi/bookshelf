class AuthorRepository
  include Lotus::Repository

  def self.id_and_names
    result = {}

    fetch("SELECT id, name FROM authors") do |author|
      result[author[:id]] = author[:name]
    end
    result
  end
end
