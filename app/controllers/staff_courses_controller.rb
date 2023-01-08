class StaffCoursesController < ApplicationController
  before_action :set_staff_course, only: %i[show edit update destroy]

  # GET /staff_courses or /staff_courses.json
  def index
    @staff_courses = StaffCourse.all
  end

  # GET /staff_courses/1 or /staff_courses/1.json
  def show; end

  # GET /staff_courses/new
  def new
    @staff_course = StaffCourse.new
  end

  # GET /staff_courses/1/edit
  def edit; end

  # POST /staff_courses or /staff_courses.json
  def create
    @staff_course = StaffCourse.new(staff_course_params)

    respond_to do |format|
      if @staff_course.save
        format.html { redirect_to staff_course_url(@staff_course), notice: 'Staff course was successfully created.' }
        format.json { render :show, status: :created, location: @staff_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @staff_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_courses/1 or /staff_courses/1.json
  def update
    respond_to do |format|
      if @staff_course.update(staff_course_params)
        format.html { redirect_to staff_course_url(@staff_course), notice: 'Staff course was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @staff_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_courses/1 or /staff_courses/1.json
  def destroy
    @staff_course.destroy

    respond_to do |format|
      format.html { redirect_to staff_courses_url, notice: 'Staff course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_staff_course
    @staff_course = StaffCourse.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def staff_course_params
    params.require(:staff_course).permit(:staff_id, :course_id)
  end
end
