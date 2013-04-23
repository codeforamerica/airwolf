class StaticPagesController < ApplicationController
  def home
  	@instructions = Instruction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instructions }
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
