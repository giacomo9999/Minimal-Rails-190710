class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.create(fruit_params)
    redirect_to fruits_path
  end

  def edit
    @fruit = Fruit.find(params[:id])
  end

  def update
    @fruit = Fruit.find(params[:id])
    @fruit.update(fruit_params)
    redirect_to fruit_path(@fruit)
  end

  def destroy
    @fruit = Fruit.find(params[:id])
    @fruit.destroy
    redirect_to fruits_path
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :shape, :color)
  end
end
