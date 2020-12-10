class FixturesController < ApplicationController

  # GET /fixtures
  # GET /fixtures.json
  def index
    @results = Result.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_result
    @result = Result.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def result_params
    params.require(:result).permit(:home, :hg, :ag, :away, :time)
  end
end
