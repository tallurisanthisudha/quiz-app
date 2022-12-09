class QuestionsController < ApplicationController

    def index
        @questions = Question.all
    end
    
    def new 
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        if @question.save
          redirect_to @question
        else
          render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy
    
        redirect_to @qurestion, status: :see_other
        flash[:notice] = "Question has been removed."
      end

    private
    def question_params
      params.require(:question).permit(:content, :option_a, :option_b, :option_c, :option_d, :correct_answer)
    end

end
