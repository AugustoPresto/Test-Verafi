class ServerStatusesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @server_statuses = ServerStatus.all
  end

  def create
    
  end

  private

  def server_status_params
    params.require(:article).permit(:status, :message)
  end
end
