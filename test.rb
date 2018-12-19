require 'sinatra'

get '/products' do
  # Display the products page
  "Macbook Pro"
end

post '/products' do
  # Create a new product
  "Macbook pro1"
end

put '/products/:id' do
  @product = Product.find_by_id(params[:id])

  if @product
    @product.name = "Macbook Pro"
    @product.save
  else
    halt 404, "Product not found"
  end

  200
end

delete '/products/:id' do
  @product = Product.find_by_id(params[:id])

  if @product
    @product.destroy
  else
    halt 404, "Product not found"
  end

  200
end