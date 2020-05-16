class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end
  
  def create
    @user = current_user
    @book = Book.new(book_params)


    if @book.save
      redirect_to @book, notice:'You have create book successfully.'
    else
      @books = Book.all
      render :index
    end
  end
  
  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "You have updated book successfully."
    else
      render :edit
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to @book
  end
  
  private    
    def book_params
      params.require(:book).permit(:title, :body)
    end
  
end
