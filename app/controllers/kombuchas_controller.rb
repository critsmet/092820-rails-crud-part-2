class KombuchasController < ApplicationController

  def index
    @kombuchas = Kombucha.all
    # render :index
  end

  def show # '/kombuchas/:id'
    @kombucha = Kombucha.find_by(id: params[:id])
    # render :show
  end

  def new
    @kombucha = Kombucha.new
    # render :new
  end

  def create
    kombucha = Kombucha.create(kombucha_params(params_array))
    # redirect_to "/kombuchas/#{kombucha.id}"
    # redirect_to kombucha_path(kombucha)
    redirect_to kombucha
  end

  def edit
    @kombucha = Kombucha.find_by(id: params[:id])
    # render :edit
  end

  def update
    kombucha = Kombucha.find_by(id: params[:id])
    kombucha.update(kombucha_params(params_array))
    redirect_to kombucha
  end

  def destroy
    kombucha = Kombucha.find_by(id: params[:id])
    kombucha.destroy
    redirect_to kombuchas_path
  end

  private

  def kombucha_params(array_args)
    params.require(:kombucha).permit(array_args)
  end

  def params_array
    [:flavor, :notes, :brew_time]
  end

end
