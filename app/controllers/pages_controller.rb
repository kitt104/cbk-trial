class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def shop
  end

  def club
  end

  def tuition
  end

end
