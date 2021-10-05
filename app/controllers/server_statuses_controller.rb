class ServerStatusesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @server_statuses = ServerStatus.all.reverse.take(5)
  end

  def new
    @server_status = ServerStatus.new
  end

  def create
    @server_status = ServerStatus.create(server_status_params)
    if @server_status.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @server_status.update(server_status_params)
    redirect_to root_path
  end

  private

  def server_status_params
    params.require(:server_status).permit(:status, :message)
  end
end
