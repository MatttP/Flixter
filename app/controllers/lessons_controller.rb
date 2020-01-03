class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :enrolled_for_course

  def show

  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def enrolled_for_course
    if current_user != current_user.enrolled_in?(@course)
      redirect_to course_path(current_course)
    end
    
end

