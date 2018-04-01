class PagesController < ApplicationController

  def index
    @teachings = Teaching.all
  end

  def about
  end

  def curriculum
  end

  def methodology
  end
end
