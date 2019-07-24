class ClientsController < ApplicationController
  skip_before_action :authenticate_client!, only: [:index, :show]
  def index
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
