class FreelancersController < ApplicationController

  before_action :set_freelancer, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_freelancer!, only: [:index, :show]
  skip_before_action :authenticate_client!, only: [:index, :show, :new]

  def index
    @freelancers = Freelancer.all
  end

  def show

  end

  def new
    @freelancer = Freelancer.new
  end


  def update
  end

  def create
    @freelancer = Freelancer.create(freelancer_params)
    if @freelancer.save
      redirect to freelancers_path(@freelancer)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def freelancer_params
    params.require(:freelancer).permit(:first_name, :last_name, :description)
  end
  def set_freelancer
    @freelancer = Freelancer.find(params[:id])
    authorize @freelancer
  end

end
