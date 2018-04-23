class JobadsController < ApplicationController

  def index
    @jobads = JobAd.all
  end

  def new
    @jobad = JobAd.new
  end

  def create
    jobad = JobAd.new(jobad_params)
    # binding.pry
    jobad.save
  end

  def show
    @jobad = JobAd.find(params[:id])
  end

  def edit
    @jobad = JobAd.find(params[:id])
  end

  def update
    jobad = JobAd.find(params[:id])
    jobad.update(jobad_params)
  end

  def destroy
    jobad = JobAd.find(params[:id])
    jobad.destroy
  end


private

  def jobad_params
    params.require(:job_ad).permit(:name, :introduction)
  end
end
