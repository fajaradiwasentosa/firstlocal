class ProfilesController < InheritedResources::Base
  def index
  end

  def create

  end
  def show
    @profile = Profile.find(params[:id])
  end
end
