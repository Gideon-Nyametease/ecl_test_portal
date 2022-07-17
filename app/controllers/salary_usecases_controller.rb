class SalaryUsecasesController < ApplicationController
  before_action :set_salary_usecase, only: %i[ show edit update destroy process_payment]

  # GET /salary_usecases or /salary_usecases.json
  def index
    # @salary_usecases = SalaryUsecase.all

    if params[:filter].present?
      search_str=""
      search_arr=[]

      filter_params = params[:filter]

      @employee_name = filter_params["employee_name"]
    


      if @employee_name.present?
        f_str = @employee_name
        f_str = f_str.gsub("'","''")
        search_arr << "employee_name iLike '#{f_str}' "
       
      end

      logger.info "+++++++++++++++++++++++++++++++"
      logger.info search_arr.inspect

      search_str << search_arr.join(" and ")

      if !search_str.present?
        @salary_usecases = SalaryUsecase.all
      else
        @salary_usecases = SalaryUsecase.where(search_str).order(created_at: :desc)
        logger.info "THIS IS THE employee name WE ARE LOOKING FOR === #{@salary_usecases.inspect} === "
      end

    else
      @salary_usecases = SalaryUsecase.all
    end
  end

  # GET /salary_usecases/1 or /salary_usecases/1.json
  def show
  end

  # GET /salary_usecases/new
  def new
    @salary_usecase = SalaryUsecase.new
  end

  # GET /salary_usecases/1/edit
  def edit
  end

  # POST /salary_usecases or /salary_usecases.json
  def create
    @salary_usecase = SalaryUsecase.new(salary_usecase_params)

    respond_to do |format|
      if @salary_usecase.save
        format.html { redirect_to salary_usecase_url(@salary_usecase), notice: "Salary usecase was successfully created." }
        format.json { render :show, status: :created, location: @salary_usecase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @salary_usecase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salary_usecases/1 or /salary_usecases/1.json
  def update
    respond_to do |format|
      if @salary_usecase.update(salary_usecase_params)
        format.html { redirect_to salary_usecase_url(@salary_usecase), notice: "Salary usecase was successfully updated." }
        format.json { render :show, status: :ok, location: @salary_usecase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @salary_usecase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_usecases/1 or /salary_usecases/1.json
  def destroy
    @salary_usecase.destroy

    respond_to do |format|
      format.html { redirect_to salary_usecases_url, notice: "Salary usecase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def process_payment
    if @salary_usecase.processed
      @salary_usecase.processed = false
      @salary_usecase.save(validate: false)
      respond_to do |format|
        format.html { redirect_to salary_usecases_url, notice: "Salary Processing Cancelled." }
        format.json { head :no_content }
      end
    else
      @salary_usecase.processed = true
      @salary_usecase.save(validate: false)
      respond_to do |format|
        format.html { redirect_to salary_usecases_url, notice: "Salary was successfully processed." }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary_usecase
      @salary_usecase = SalaryUsecase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salary_usecase_params
      params.require(:salary_usecase).permit(:employee_name, :position, :department, :date_joined, :par_period, :work_days, :gross_amount, :net_amount, :active_status, :del_status, :processed)
    end
end
