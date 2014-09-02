class SubmissionsController < ApplicationController

  def index
    @assignment = Assignment.find params[:assignment_id]
    @submissions = Submission.all
    # authorize @submission, :index?
  end

  def show
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @comment = @submission.comments.new
    authorize @submission, :show?
  end

  def new
    @submission = Submission.new
    @assignment = Assignment.find params[:assignment_id]
    # authorize @submission, :new?
  end

  def create
    @assignment = Assignment.find params[:assignment_id]
    @submission = @assignment.submissions.new(submission_params)
    # authorize @submission, :create?
    respond_to do |format|
    if @submission.save
      format.html { redirect_to assignment_submissions_path(@assignment), notice: 'Submission was successfully added!' }
    else
      format.html { render :new }
    end
  end
    
  end

  def edit
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    authorize @submission, :edit?
  end

  def update
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @submission.update_attributes(submission_params)
    authorize @submission, :update?
    redirect_to assignment_submissions_path(@assignment)
  end

  def destroy
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @submission.delete
    # authorize @submission, :destroy?
    redirect_to assignment_submissions_path(@assignment)
  end

  def review
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @submission.review!
    redirect_to assignment_submission_path(@assignment, @submission)
  end

  def undone
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @submission.undone!
    redirect_to assignment_submission_path(@assignment, @submission)
  end

  def done
    @assignment = Assignment.find params[:assignment_id]
    @submission = Submission.find(params[:id])
    @submission.done!
    redirect_to assignment_submission_path(@assignment, @submission)
  end

  def create_comment
    @assignment = Assignment.find params[:assignment_id]
    @submission = @assignment.submissions.find params[:id]
    @comment = @submission.comments.create comment_params
    redirect_to assignment_submission_path(@assignment, @submission)
  end

  def delete_comment
    @assignment = Assignment.find params[:assignment_id]
    @submission = @assignment.submissions.find params[:id]
    @comment = @submission.comments.find params[:comment_id]
    @comment.delete
    redirect_to assignment_submission_path(@assignment, @submission)
  end

  private

  def submission_params
    params.require(:submission).permit(:name, :links)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
