class VisitorsController < ApplicationController

    def new
      @owner = Owner.new
      # optionnel car conv over configuration:
      # render 'visitors/new'
      # Alternative layout appliquer un autre layout
      # render 'visitors/new', :layout => 'special'
      flash[:notice] = 'Welcome!'
      flash.now[:alert] = 'My birthday is soon.'
    end

end
