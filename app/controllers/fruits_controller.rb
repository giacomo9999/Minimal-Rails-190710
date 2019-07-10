class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
