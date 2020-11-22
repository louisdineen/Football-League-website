class FixturesController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /fixtures
  # GET /fixtures.json
  def index
    @results = Result.all
  end

  # GET /fixtures/1
  # GET /fixtures/1.json
  def show
  end

  # GET /fixtures/new
  def new
    @result = Result.new
  end

  # GET /fixtures/1/edit
  def edit
  end

  # POST /fixtures
  # POST /fixtures.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixtures/1
  # PATCH/PUT /fixtures/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixtures/1
  # DELETE /fixtures/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to fixtures_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
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
