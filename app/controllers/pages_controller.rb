class PagesController < ApplicationController

   skip_before_action :authenticate_freelancer!, only: :home
    skip_before_action :authenticate_client!, only: :home
  def home
  end

  def about
  end

  def contact
  end
end
