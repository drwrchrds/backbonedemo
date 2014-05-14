class PostsController < ApplicationController
  def index
    @posts = Post.all
    
    respond_to do |format|
      format.json do
        render :json => @posts
      end
      format.html do
        render :index
      end
    end
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      render :json => @post
    else
      render :json => @post.errors.full_messages
    end
  end
  
  def show
    @post = Post.find(params[:id])
    # does render :json automatically call .as_json?
    # why does calling .to_json on a string work instead?
    # render :json => "some string".as_json
    head :ok
  end
  
  def update
    @post = Post.find(params[:id])
    
    # render :json => 'some string'.to_json
    head :ok
    # why does head :ok return " " as response body?
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
