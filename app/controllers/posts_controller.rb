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
      JamChannel.broadcast_to(
        @jam,
        {
          post: render_to_string(partial: "post", locals: {post: @post, jam: @jam}),
          user_id: current_user.id
        }
      )
      head :ok
      # redirect_to jam_path(@jam)
    else
      JamChannel.broadcast_to(
        @jam,
        {
          form_error: render_to_string(partial: "post_form", locals: {post: @post, jam: @jam}),
          user_id: current_user.id
        }
      )
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
