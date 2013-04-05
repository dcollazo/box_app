class FruitsController < ApplicationController
   def index
    @fruits = Fruit.paginate(page: params[:page])
  end

  def new
    @fruit = Fruit.new
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def create
    @fruit = Fruit.new(fruit_params)
    if @fruit.save
      flash[:success] = "New fruit created"
      redirect_to @fruit
    end
  end

   def fruit_params
      params.require(:fruit).permit(:name)
   end
end
