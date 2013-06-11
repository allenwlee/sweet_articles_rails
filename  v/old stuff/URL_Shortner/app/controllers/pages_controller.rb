class PagesController < ApplicationController
  def home
    @link = Link.new
  end

  def destroy
    Post.destroy(params[:id])
  end
end
