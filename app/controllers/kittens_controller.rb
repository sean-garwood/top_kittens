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
    @kitten = Kitten.find(params[:id])
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
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      flash[:success] = "Kitten was successfully updated."
      redirect_to kitten_path(@kitten)
    else
      flash[:error] = "Something went wrong."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    if @kitten.destroy
      flash[:success] = "Kitten was successfully deleted."
      redirect_to kittens_path
    else
      flash[:error] = "Something went wrong."
      redirect_to kitten_path(@kitten)
    end
  end

  private

  def kitten_params
    params.fetch(:kitten, {}).permit(:name, :age, :cuteness, :softness)
  end
end
