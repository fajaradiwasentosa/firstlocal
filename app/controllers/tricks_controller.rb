class TricksController < InheritedResources::Base
  def index
    @tricks = Trick.order("created_at DESC")
  end
end
