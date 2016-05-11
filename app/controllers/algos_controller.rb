class AlgosController < ApplicationController

  def index
    @algos = Algo.all
    @favorites = Algo.where(:fav => true)
  end

  def show
    @algo = Algo.find(params[:id])
  end

  def new
    @algo = Algo.new
  end

  def edit
    @algo = Algo.find(params[:id])
  end

  def create
    @algo = Algo.new(algo_params)

    if @algo.save
      flash[:notice] = "Algorithm Created!"
      respond_to do |format|
        format.html { redirect_to @algo }
        format.js
      end
    else
      flash[:error] = "Your Algorithm could not be created!"
      render 'new'
    end
  end

  def update
    @algo = Algo.find(params[:id])
    if @algo.update(algo_params)
      flash[:notice] = "Algorithm Updated!"
      redirect_to @algo
    else
      flash[:error] = "Your Algorithm could not be updated!"
      render 'edit'
    end
  end

  def destroy
    @algo = Algo.find(params[:id])
    @algo.destroy

    redirect_to algos_path
  end

  private
    def algo_params
      params.require(:algo).permit(:name, :algorithm, :fav)
    end

end
