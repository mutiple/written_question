class TeachersController < ApplicationController
  before_action :set_teacher ,only: [:show,:destroy]
  skip_before_filter :verify_authenticity_token

  def index
    @teachers = Teacher.all
    render json: @teachers
  end

  def show
    render json: @teacher
  end

  def destroy
    @teacher.destroy
  end

  private
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
