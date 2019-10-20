class ReportsController < ApplicationController
  def index
    # @reports = Report.order('id DESC')
  end

  def new
    @report = Report.new
    @report.selfies.build
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path
    else
      render :new
    end
  end
end

private

def report_params
  params.require(:report).permit(
    :weight,
    :text,
    :entry_on,
    selfies_attributes:[:id,
                        :picture,
                        :_destroy,
                        :item_id]
  ).merge(user_id: current_user.id)
end
