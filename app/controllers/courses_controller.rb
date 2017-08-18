class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def favorites_add
    user = Student.find(params[:u_id])
    course = Course.find(params[:c_id])
    if user.favorites_addition(user.id, course.id)
      redirect_to root_path
    end
  end

  def favorites_delete
    user = Student.find(params[:u_id])
    course = Course.find(params[:c_id])
    if user.favorites_deletion(user.id, course.id)
      redirect_to root_path
    end
  end
end
