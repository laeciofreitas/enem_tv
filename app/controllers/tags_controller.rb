class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
    @exams = @tag.exams
  end

end

