class PagesController < ApplicationController
  before_action :require_vip, only: [:easter_egg]

  def home
  end

  def about
  end

  def thanks
  end
  
  def easter_egg
  end
end
