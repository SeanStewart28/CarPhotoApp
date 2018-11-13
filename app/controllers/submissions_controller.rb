class SubmissionsController < ApplicationController
    
    def index 
        @submissions = Submission.all
    end
    
    def show 
        @submission = Submission.find(params[:id])
    end
    
    def new
        @submission = Submission.new
    end
    
    def create
        @submission = Submission.new(submission_params)
        
        if @submission.save
            redirect_to @submission
        else
            render 'new'
        end
    end
    
    def edit 
        @submission = Submission.find(params[:id])
    end
    
    def update
        @submission = Submission.find(params[:id])
        if @submission.update(submission_params)
            redirect_to @submission
        else
            render 'edit'
        end
    end
    
    def destroy
        @submission = Submission.find(params[:id])
        @submission.destroy
        redirect_to submissions_path
    end
end

private 
    def submission_params
        params.require(:submission).permit(:title, :text)
    end