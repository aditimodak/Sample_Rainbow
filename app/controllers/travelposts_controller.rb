class TravelpostsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy

  def create
    @travelpost = current_user.travelposts.build(params[:travelpost])
    if @travelpost.save
      flash[:success] = "Travel story created!"
      redirect_to current_user
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @travelpost.destroy
    redirect_to current_user
  end

  private

  def correct_user
    @travelpost = current_user.travelposts.find_by_id(params[:id])
    redirect_to current_user if @travelpost.nil?
  end

end