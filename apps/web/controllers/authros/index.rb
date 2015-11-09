module Web::Controllers::Authors
  class Index
    include Web::Action

    expose :authors

    def call(params)
      @authors = AuthorRepository.all
    end
  end
end
