class TablesController < ApplicationController
  before_action :set_result, only: [:show]

  # GET /fixtures
  # GET /fixtures.json
  def index
    @tables = Table.all
    @table = Table.all.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_result
    @table = Table.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def result_params
    params.require(:result).permit(:home, :wins, :draws, :losses, :hg, :ag)
  end
end
