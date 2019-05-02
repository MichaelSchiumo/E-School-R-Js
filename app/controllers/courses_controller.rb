class CoursesController < ApplicationController
  # before_action :require_login
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  def index
    @courses = Course.all
  end

  # GET /courses/1
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
    redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  def download_pdf
    id = params[:id]
    if id == '1'
      send_file "#{Rails.root}/app/assets/docs/reading.txt", type: "application/txt", x_sendfile: true
    else
      send_file "#{Rails.root}/app/assets/docs/assignment.txt", type: "application/txt", x_sendfile: true
    end
  end

  # def download_pdf2
  #   send_file "#{Rails.root}/app/assets/docs/assignment.txt", type: "application/txt", x_sendfile: true
  # end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :grade)
    end
end
