class BooksController < ApplicationController
  def create
    @book = current_user.books.new(book_params)
    if @book.save
      redirect_to book_path(@book), flash: {notice: "You have created book successfully."}
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)

  end

end
