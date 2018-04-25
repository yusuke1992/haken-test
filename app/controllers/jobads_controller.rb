class JobadsController < ApplicationController

  # before_action :move_to_index, except: :index

  def index
    @jobads = JobAd.all
    @user = current_user
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

  def test
  end


private

  def jobad_params
    params.require(:job_ad).permit(:name, :introduction)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
