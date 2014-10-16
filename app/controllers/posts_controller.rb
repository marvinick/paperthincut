class PostsController < ApplicationController
  def index
    @posts = Post.order(:title).reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(post_params)

    if @post.update
      redirect_to post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end