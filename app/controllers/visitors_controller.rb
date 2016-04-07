class VisitorsController < ApplicationController

    def new
      # @owner = Owner.new
      # optionnel car conv over configuration:
      # render 'visitors/new'
      # Alternative layout appliquer un autre layout
      # render 'visitors/new', :layout => 'special'
      # flash[:notice] = 'Welcome!'
      # flash.now[:alert] = 'My birthday is soon.'
      @visitor = Visitor.new
    end

    def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:email)
  end

end
