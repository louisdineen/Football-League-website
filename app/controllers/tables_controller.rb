class TablesController < ApplicationController

  # GET /fixtures
  # GET /fixtures.json
  def index
    @tables = Table.all
    # @table = Table.all.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_result
    @table = Table.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def result_params
    params.require(:result).permit(:name, :wins, :draws, :losses, :gf, :ga)
  end
end
