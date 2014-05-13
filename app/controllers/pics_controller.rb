class PicsController < ApplicationController
	before_action :authenticate_user!


	def create
		@place = Place.find(params[:place_id])
		@place.pics.create(pics_params.merge(:user => current_user))
		redirect_to place_path(@place)

		if @place.user != current_user
    return render :text => 'Not Allowed', :status => :forbidden
	end
	end

	private

  def pics_params
    params.require(:pic).permit(:picture)
  end
  
end
