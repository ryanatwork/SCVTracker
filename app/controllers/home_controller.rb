class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    if current_user.school_deputy
      @students = current_user.students
    end
  end

end
