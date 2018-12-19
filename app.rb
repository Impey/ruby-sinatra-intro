require "sinatra"
#require "sinatra/contrib"

get '/book' do
  # Displays the book page
  "My Favourite book is "
end

post '/book' do
  # Creates a new book
  "Mistborn"
end

put '/book/:id' do
  @book = Product.find_by_id(params[:id])

  if @book
    @book.name = "Mistborn"
    @book.save
  else
    halt 404, "Book not found"
  end
end

delete '/book/:id' do
  @book = Product.find_by_id(params[:id])
  if @book
    @book.destroy
  else
    halt 404, "Product not found"
  end
end





#books 
#movie
#tech