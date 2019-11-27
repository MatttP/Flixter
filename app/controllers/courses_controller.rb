class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def require_authorized_for_current_course
    if current_course.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:course_id])
  end

  def course_params
    parms.require(:course).permit(:title, :description, :cost)
  end

end

