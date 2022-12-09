class AnswersController < ApplicationController

    def new
        @answer = Answer.new
    end

    def index
        @answers = current_user.answers
        @questions = Question.all
    end



    def create
        @answer = Answer.new(answer_params)
        if @answer.save
          
        else
          render :new, status: :unprocessable_entity
        end
    end

    private
    def answer_params
        params.permit(:question_id, :answer, :user_id)
    end

end
