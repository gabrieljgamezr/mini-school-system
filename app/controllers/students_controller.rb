class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: {
      data: students,
      status: 200,
      message: "Operación exitosa"
    }, status: 200
  end

  def show
  end

  def create
    student = Student.new(
      name: student_params[:name],
      lastname: student_params[:lastname],
      class_id: student_params[:class_id],
    )
    if student.save
      render json: article, status: 200
    else
      render json: {
        error: "Error al crear un estudiante",
        status: 400,
      }, status: 400
    end
  end

  private
  def student_params
    params.require(:students).permit([
      :name,
      :lastname,
      :class_id,
    ])
  end
end
