class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def show
    @exam = Exam.find(params[:id])
  end

  def new
    @exam = Exam.new
    3.times do
      question = @exam.questions.build
      4.times {question.alternatives.build}
    end
  end

  def create
    @exam = Exam.new(params[:exam])
    if @exam.save
      flash[:notice] = "Successfully created exam."
      redirect_to @exam
    else
      render :action => 'new'
    end
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def update
    @exam = Exam.find(params[:id])
    if @exam.update_attributes(params[:exam])
      flash[:notice] = "Successfully updated exam."
      redirect_to @exam
    else
      render :action => 'edit'
    end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy
    flash[:notice] = "Successfully destroyed exam."
    redirect_to exams_url
  end
end

