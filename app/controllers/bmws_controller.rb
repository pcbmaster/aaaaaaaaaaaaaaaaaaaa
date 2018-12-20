class BmwsController < ApplicationController
  def index
    @bmws = BMW.all
  end

  def show
    @bmw = 
  end
end
