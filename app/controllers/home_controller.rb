class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def show
  	@users = User.all
  end

end
