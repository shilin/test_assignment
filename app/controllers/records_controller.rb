class RecordsController < ApplicationController

  def index
    @records = Record.paginate(:page => params[:page])
  end

  def new
    @record = Record.new
  end

  def create

    Record.import(params[:file]) rescue flash[:notice] = "error importing"
    flash[:notice] ||= "spreadsheet imported"

    redirect_to records_path
  end

end
