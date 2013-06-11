class LinksController < ApplicationController
  def show
    @link = Link.find_by_id(params[:id])
  end

  def redirect
    link = Link.find_by_short_url(params[:short_url])
    redirect_to link.url
  end

  def create
    @link = Link.new(params[:link])
    respond_to do |format|
      if @link.save
        format.html { redirect_to @link }
        format.json { render :json => @link }
      else
        flash.now[:error] = "Failed to save link"
        render 'pages/home'
      end
    end
  end
end
