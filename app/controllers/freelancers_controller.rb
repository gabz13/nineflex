class FreelancersController < ApplicationController

  before_action :set_freelancer, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_freelancer!, only: [:index, :show, :new]
  skip_before_action :authenticate_client!, only: [:index, :show, :new]

  def index
    @freelancers = Freelancer.all
  end

  def show
  @freelancer = Freelancer.new
  end

  def new
    @freelancer = Freelancer.new
    # authorize @freelancer
  end


  def update
    if @freelancer.update(freelancer_params)
      redirect_to @freelancer, notice: 'Freelancer successfully created'
    else
      render :edit
    end
  end

  def create

    @freelancer = Freelancer.new(freelancer_params)
    @freelancer.freelancer = current_freelancer
     authorize @freelancer
    if @freelancer.save
      redirect to freelancer_path(@freelancer), notice: 'Freelancer successfully created'
    else
      render :new
    end
  end

  # def create
  #   @freelancer = Freelancer.new(freelancer_params)
  #   @freelancer.save

  # end
  def edit
  end

  def destroy
    @freelancer.destroy
    redirect_to freelancers_path
  end

  private

  def freelancer_params
    params.require(:freelancer).permit(:id, :first_name, :last_name, :description)
  end
  def set_freelancer
    @freelancer = Freelancer.find(params[:id])
    # authorize @freelancer
  end

end
