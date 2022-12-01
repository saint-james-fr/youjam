class PostsController < ApplicationController
  def destroy
    authorize @post
  end

  def new
    authorize @post
  end

  def create
    authorize @post
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
  end
end
