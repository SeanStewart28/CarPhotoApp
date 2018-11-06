class SubmissionsController < ApplicationController
    def show 
        @submission = Submission.find(params[:id])
    end
    
    def new
    end
    
    def create
        @submission = Submission.new(submission_params)
        
        @submission.save
        redirect_to @submission
    end
end

private 
    def submission_params
        params.require(:submission).permit(:title, :text)
    end