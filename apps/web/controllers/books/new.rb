module Web::Controllers::Books
  class New
    include Web::Action

    expose :authors

    def call(params)
      @authors = AuthorRepository.id_and_names
    end
  end
end
