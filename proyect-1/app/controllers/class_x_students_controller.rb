class ClassXStudentsController < ApplicationController
  before_action :set_class_x_student, only: [:show, :edit, :update, :destroy]

  # GET /class_x_students
  # GET /class_x_students.json
  def index
    @class_x_students = ClassXStudent.all
  end

  # GET /class_x_students/1
  # GET /class_x_students/1.json
  def show
  end

  # GET /class_x_students/new
  def new
    @class_x_student = ClassXStudent.new
  end

  # GET /class_x_students/1/edit
  def edit
  end

  # POST /class_x_students
  # POST /class_x_students.json
  def create
    @class_x_student = ClassXStudent.new(class_x_student_params)

    respond_to do |format|
      if @class_x_student.save
        format.html { redirect_to @class_x_student, notice: 'Class x student was successfully created.' }
        format.json { render :show, status: :created, location: @class_x_student }
      else
        format.html { render :new }
        format.json { render json: @class_x_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_x_students/1
  # PATCH/PUT /class_x_students/1.json
  def update
    respond_to do |format|
      if @class_x_student.update(class_x_student_params)
        format.html { redirect_to @class_x_student, notice: 'Class x student was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_x_student }
      else
        format.html { render :edit }
        format.json { render json: @class_x_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_x_students/1
  # DELETE /class_x_students/1.json
  def destroy
    @class_x_student.destroy
    respond_to do |format|
      format.html { redirect_to class_x_students_url, notice: 'Class x student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_x_student
      @class_x_student = ClassXStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_x_student_params
      params.require(:class_x_student).permit(:class_id, :student_id)
    end
end
