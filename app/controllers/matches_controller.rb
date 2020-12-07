class MatchesController < ApplicationController

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_match
    @match = Match.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def match_params
    params.require(:match).permit(:home, :away, :time)
  end
end
