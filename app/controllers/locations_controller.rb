class LocationsController <ApplicationController
  before_action :authenticate_user!
  before_action :only => [:new, :edit, :create, :destroy, :update] do
    redirect_to locations_path unless current_user && current_user.admin
  end

  def index
    @locations = Location.all
    if current_user
      flash[:notice] = "Please sign in to continue."
    end
    render :index
    
  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:notice] = "Location added!"
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
    render :edit
  end

  def show 
    @location = Location.find(params[:id])
    @items = @location.items
    render :show
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end


  private
  def location_params
    params.require(:location).permit(:name, :description, :item_id) 
  end

end