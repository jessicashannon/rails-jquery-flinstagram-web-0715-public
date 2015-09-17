class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def like
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    @picture.save
    @picture.reload
    # redirect_to root_path
  end

end
