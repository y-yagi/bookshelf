module Web::Controllers::Authors
  class Create
    include Web::Action

    expose :author

    params do
      param :author do
        param :name,  presence: true
      end
    end

    def call(params)
      if params.valid?
p params
        @author = AuthorRepository.create(Author.new(params[:author]))

        redirect_to routes.authors_path
      end
    end
  end
end
