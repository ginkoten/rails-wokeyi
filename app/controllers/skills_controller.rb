class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  #index, new, create, show, edit, update, destory
  def index
    @skills = Skill.all
    @category = params[:search]
    if @category
      @skills = @skills.where(category: @category)
    end
    # @coordinates = Gmaps4rails.build_markers(@skills) do |skill, marker|
    #   marker.lat skill.latitude
    #   marker.lng skill.longtitude
    #   marker.infowndow skill.name
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user_id = current_user.id
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def show
    @skill = Skill.find(params[:id])
    @booking = Booking.new
    #   @coordinates = Gmaps4rails.build_markers(@skill.where.not(latitude: nil)) do |skill, marker|
    #   marker.lat skill.latitude
    #   marker.lng skill.longitude
    #   marker.infowindow skill.name
    # end
    # @coordinates = [{ lat: @skill.latitude, lng: @skill.longitude }]
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to skill_path(@skill)
  end

  def destory
    @skill = Skill.find(params[:id])
    @skill.destory
    redirect_to dashboard_path
  end

  def skill_params
    params.require (:skill).permit(:title, :brief, :price, :skills_category, :location, :description, photos: [])
  end
end
