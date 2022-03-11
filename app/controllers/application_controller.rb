class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/shoes" do
    shoes = Shoe.all
    shoes.to_json
  end

  # delete "/shoes/:id" do
  #   shoe = Shoe.find(params[:id])
  #   Shoe.delete_rating(shoe)
  #   shoe.to_json
  # end

  delete '/shoes/:id' do 
    shoe = Shoe.find(params[:id])
    shoe.destroy
    shoe.to_json
  end
  
  get "/posts" do
    posts = Post.all
    posts.to_json(
      include: :shoe
    )
  end

  post "/posts" do 
    post = Post.create({
      user_id: params[:user_id], 
      shoe_id: params[:shoe_id], 
      rating: params[:rating]
    })

  end

  patch '/post/:id' do
    post = Post.find(params[:id])

    attrs_to_update = params.select do |key, value|
      ["user_id", "shoe_id", "rating"].includes?(key)
    end

    post.update(attrs_to_update)

    post.to_json
  end

  delete '/post/:id' do 
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end



