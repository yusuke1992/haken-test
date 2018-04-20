class JobadsController < ApplicationController
  def index
    @jobads = JobAd.all
  end

end
