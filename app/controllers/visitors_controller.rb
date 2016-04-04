class VisitorsController < ApplicationController

    def new
      @owner = Owner.new
      # optionnel car conv over configuration:
      # render 'visitors/new'
    end

end
