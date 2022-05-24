class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book), flash: {notice: "You have created book successfully."}
    else
      redirect_to book_path(@book), flash: {notice: "You have created book successfully."}
      # render :edit
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
