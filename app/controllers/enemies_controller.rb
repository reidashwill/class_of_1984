class EnemiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @enemies = Enemy.all
    render :index
  end

  def new
    @enemy = Enemy.new
    render :new
  end

  def create
    @enemy = Enemy.new(enemy_params)
    if @enemy.save
      flash[:notice] = "Enemy added!"
      redirect_to enemies_path
    else
      render :new
    end
  end

  def edit
    @enemy = Enemy.find(params[:id])
    render :edit
  end

  def show
    @enemy = Enemy.find(params[:id])
    render :show
  end

  def update
    @enemy = Enemy.find(params[:id])
    if @enemy.update(enemy_params)
      redirect_to enemies_path
    else
      render :edit
    end
  end

  def destroy
    @enemy = Enemy.find(params[:id])
    @enemy.destroy
    redirect_to enemies_path
  end

  private
  def enemy_params
    params.require(:enemy).permit(:name, :atk, :hp)
  end

end