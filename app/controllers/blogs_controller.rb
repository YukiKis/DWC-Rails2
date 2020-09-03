class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog1 = Blog.new
  end

  def create
    list = Blog.new(blog_params)
    list.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
