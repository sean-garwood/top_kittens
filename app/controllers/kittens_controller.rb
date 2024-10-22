class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to kitten_path(@kitten)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def kitten_params
    params.fetch(:kitten, {}).permit(:name, :age, :cuteness, :softness)
  end
end
