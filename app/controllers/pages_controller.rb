class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :shop, :club, :tuition]

  def home
  end

  def shop
  end

  def club
  end

  def tuition
  end

  def members
    authorize current_user
  end

end
