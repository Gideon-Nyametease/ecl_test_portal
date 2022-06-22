class OnesimusTestsController < ApplicationController
  before_action :set_onesimus_test, only: %i[ show edit update destroy ]

  # GET /onesimus_tests or /onesimus_tests.json
  def index
    @onesimus_tests = OnesimusTest.all
  end

  # GET /onesimus_tests/1 or /onesimus_tests/1.json
  def show
  end

  # GET /onesimus_tests/new
  def new
    @onesimus_test = OnesimusTest.new
  end

  # GET /onesimus_tests/1/edit
  def edit
  end

  # POST /onesimus_tests or /onesimus_tests.json
  def create
    @onesimus_test = OnesimusTest.new(onesimus_test_params)

    respond_to do |format|
      if @onesimus_test.save
        format.html { redirect_to onesimus_test_url(@onesimus_test), notice: "Onesimus test was successfully created." }
        format.json { render :show, status: :created, location: @onesimus_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @onesimus_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onesimus_tests/1 or /onesimus_tests/1.json
  def update
    respond_to do |format|
      if @onesimus_test.update(onesimus_test_params)
        format.html { redirect_to onesimus_test_url(@onesimus_test), notice: "Onesimus test was successfully updated." }
        format.json { render :show, status: :ok, location: @onesimus_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @onesimus_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onesimus_tests/1 or /onesimus_tests/1.json
  def destroy
    @onesimus_test.destroy

    respond_to do |format|
      format.html { redirect_to onesimus_tests_url, notice: "Onesimus test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onesimus_test
      @onesimus_test = OnesimusTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def onesimus_test_params
      params.require(:onesimus_test).permit(:name_of_insured, :address, :occupation, :telephone, :reg_number, :make, :model, 
        :year_of_make, :business_private, :driver_name, :driver_address, :driver_age, :driver_telephone, :driving_license_no, 
        :licence_class, :date_of_issue, :convicted_of_motoring_offence, :loss_date, :time_of_loss, :accident_location, 
        :vehicle_speed, :nature_of_loss, :accident_desc, :report_date, :policy_number, :images =>[])
    end
end
