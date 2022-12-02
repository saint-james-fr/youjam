class PostsController < ApplicationController
  def destroy
  end

  def create
    @post = Post.new(post_params)
    @jam = Jam.find(params[:jam_id])
    @post.jam = @jam
    @post.user = current_user
    if @post.save
      redirect_to jam_path(@jam)
      flash.alert = "Message publié !"
    else
      flash.alert = "Vérfie que tu n'aies rien oublié"
      render "jams/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
