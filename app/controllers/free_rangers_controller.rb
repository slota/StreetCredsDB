require 'pry'
class FreeRangersController < ApplicationController
  def new
    @free_ranger = FreeRanger.new
    @free_rangers = FreeRanger.all
  end

  def create
    @free_ranger = FreeRanger.new(user_params)
    if @free_ranger.save
      redirect_to new_free_ranger_path
    end
  end

  private

  def user_params
    params.require(:free_ranger).permit(:first_name, :last_name, :description, :image_url)
  end
end
