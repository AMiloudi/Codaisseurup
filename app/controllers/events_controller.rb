class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @events = current_user.events
  end

  def show
    @categories = @event.categories
    @photos = @event.photos
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      image_params.each do |image|
        @event.photos.create(image: image)
      end
      redirect_to @event, notice: "Event succesfully created"
    else
      render :new
    end
  end

  def edit
    if current_user.id == @event.user.id
      @photos = @event.photos
    else
      redirect_to root_path, notice: "You do not have permission."
    end
  end

  def update
    if @event.update(event_params)
      image_params.each do |image|
        @event.photos.create(image: image)
      end

      redirect_to @event, notice: "Event updated"
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(event_params)

    @event.destroy

    redirect_to events_path
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end


  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params
    .require(:event)
    .permit(
      :name, :location, :price, :capacity, :active, :description, :starts_at, :ends_at, :includes_foods, :includes_drinks, :user_id, category_ids: []
    )
  end
end
