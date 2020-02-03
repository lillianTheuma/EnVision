class QuestionsController < ApplicationController
before_action :authenticate_user!

 def index
   @questions = Question.all
   render :index
 end

 private
 def question_params
   params.require(:question).permit(:answer)
 end
end
