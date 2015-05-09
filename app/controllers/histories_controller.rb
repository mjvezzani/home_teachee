class HistoriesController < ApplicationController

  def create
    @home_teachee = HomeTeachee.find_by(id: params[:home_teachee_id])
    @history = @home_teachee.histories.build(params.require(:history).permit(:visit_summary))

    if @history.save
      flash[:success] = 'History Item Created'
      redirect_to home_teachee_path(@home_teachee)
    else
      flash[:error] = 'Something went wrong'
      redirect_to home_teachee_path(@home_teachee)
    end
  end

end
