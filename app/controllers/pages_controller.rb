class PagesController < ApplicationController
  before_action :require_user, only: [:easter_egg]
  def home
  end

  def about
  end
  def thanks
  end
  def easter_egg
  end
end
