class Public::PostEventsController < ApplicationController

  def index

  end

  def show
  end


  def new
    @post_event = PostEvent.new
  end

  def create

  end


  def edit
  end

  def update
  end

  private

  # def post_event_params
    # params.require(:post_event).permit(:start_date, :end_date, :body, :url,  zb_ids: [])
  # end



end
