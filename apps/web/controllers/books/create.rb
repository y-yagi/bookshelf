module Web::Controllers::Books
  class Create
    include Web::Action

    expose :book, :authors

    params do
      param :book do
        param :name,  presence: true
        param :author_id, presence: true
        param :price, presence: true, type: Integer
        param :code, presence: true
      end
    end

    def call(params)
      if params.valid?
        @book = BookRepository.create(Book.new(params[:book]))

        redirect_to routes.books_path
      else
        @authors = AuthorRepository.id_and_names
      end
    end
  end
end
