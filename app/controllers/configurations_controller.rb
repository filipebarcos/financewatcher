class ModelController < ApplicationController
  require_logged_user

  def new
    @configuration = Configuration.new
    @tickers = Tickers.scoped
  end

  def create
    @configuration = current_user.configuration.new(params[:configuration])
  end

end