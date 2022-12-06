class PostsController < ApplicationController
  def destroy
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    @jam = Jam.find(params[:jam_id])
    @post.jam = @jam
    if @post.save
      redirect_to jam_path(@jam)
      flash.alert = "Message publié !"
    else
      flash.alert = "Vérfie que tu n'aies rien oublié"
      render "jams/show", status: :unprocessable_entity
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
