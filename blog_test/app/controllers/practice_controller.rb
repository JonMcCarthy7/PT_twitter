class PracticeController < ApplicationController
  def index
    @name = params[:name]
   # @name will be nil if we come to this
   # page via the 'get' route
  end

  def about
    # here we'll pull from the query string
    # and save that value in an instance variable
    @color = params[:color]
  end
end
