class ChartsController < ApplicationController

  def new

  end

  def create
    @chart = Chart.new

  end
end
