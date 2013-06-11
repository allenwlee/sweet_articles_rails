class GudzsController < ApplicationController

  def index
    @all_gudz = Gudz.all
  end

  def show
    @gudz = Gudz.find(:title => params[:title])
  end
end
