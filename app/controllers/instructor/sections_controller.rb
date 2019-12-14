class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:create]
  
  def new
    @section = Section.new
  end

  def create
    @section = current_course.sections.create(section_params)
    redirect_to instructor_course_path(current_course)
  end

  private

  def current_section
    @current_section ||= Section.find(params[:id])
  end


  def require_authorized_for_current_course
    if current_course.user != current_user
      render plain: "Unauthorized", status: :Unauthorized
    end
  end

  helper_method :current_course
  def current_course
    if params[:course_id]
      @current_course ||= Course.find(params[:course_id])
    else
      current_section.course
    end

  end

  def section_params
    params.require(:section).permit(:title)
  end
end

