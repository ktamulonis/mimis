class PerformancesController < ApplicationController
  before_action :set_performance, only: [:show, :edit, :update, :destroy, :delete_image_attachment]
  
  private

  def set_performance
    @performance = Performance.find_by_slug(params[:id])
  end 

end
