class FruitsController < ApplicationController
  before_action :current_fruit, only: [:show, :edit, :update, :destroy]

  def index
    @fruits = Fruit.all
  end

  def show
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.create(fruit_params)
    redirect_to fruits_path
  end

  def edit
  end

  def update
    @fruit.update(fruit_params)
    redirect_to fruit_path(@fruit)
  end

  def destroy
    @fruit.destroy
    redirect_to fruits_path
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :shape, :color)
  end

  def current_fruit
    @fruit = Fruit.find(params[:id])
  end
end
