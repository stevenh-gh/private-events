class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    # @event = Event.new event_params
    @event = User.find(session[:current_user_id]).hosted_events.build event_params

    if @event.save
      redirect_to event_path @event
    else
      render :new
    end
  end

  def show
    @event = Event.find params[:id]
  end

  private

  def event_params
    # params.require(:event).permit :description, :location, :date, :hosted_id
    params.require(:event).permit :description, :location, :date
  end
end
