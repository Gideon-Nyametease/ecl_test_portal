class GideonTestsController < ApplicationController
  before_action :set_gideon_test, only: %i[ show edit update destroy ]

  # GET /gideon_tests or /gideon_tests.json
  def index
    @gideon_tests = GideonTest.all
  end

  # GET /gideon_tests/1 or /gideon_tests/1.json
  def show
  end

  # GET /gideon_tests/new
  def new
    @gideon_test = GideonTest.new
  end

  # GET /gideon_tests/1/edit
  def edit
  end

  # POST /gideon_tests or /gideon_tests.json
  def create
    @gideon_test = GideonTest.new(gideon_test_params)

    respond_to do |format|
      if @gideon_test.save
        format.html { redirect_to gideon_test_url(@gideon_test), notice: "Gideon test was successfully created." }
        format.json { render :show, status: :created, location: @gideon_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gideon_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gideon_tests/1 or /gideon_tests/1.json
  def update
    respond_to do |format|
      if @gideon_test.update(gideon_test_params)
        format.html { redirect_to gideon_test_url(@gideon_test), notice: "Gideon test was successfully updated." }
        format.json { render :show, status: :ok, location: @gideon_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gideon_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gideon_tests/1 or /gideon_tests/1.json
  def destroy
    @gideon_test.destroy

    respond_to do |format|
      format.html { redirect_to gideon_tests_url, notice: "Gideon test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gideon_test
      @gideon_test = GideonTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gideon_test_params
      params.require(:gideon_test).permit(:first_name, :last_name, :dob, :nationality, :phone_number, :email, :id_type, :id_number, :home_address, :second_address, :occupation, :gender)
    end
end
