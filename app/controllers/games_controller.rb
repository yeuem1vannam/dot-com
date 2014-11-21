class GamesController < ApplicationController
  layout false

  def show
    render params[:file_name]
  end
end
