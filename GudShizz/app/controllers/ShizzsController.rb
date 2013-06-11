class ShizzsController < ApplicationController

  def index
    @all_shizz = Shizz.all
  end

  def new
  end

  def create
    @shizz = Shizz.create(params[:shizz])
  end

  def show
    @shizz = Shizz.find(params[:shizz_id])
  end

  def edit
  end

  def update
    Shizz.update_attributes(params[:shizz])
  end

  def destroy
    Shizz.delete(params[:shizz_id])
  end
end
