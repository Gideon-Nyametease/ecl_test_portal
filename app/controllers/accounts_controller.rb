class AccountsController < ApplicationController
  before_action :set_account, only: %i[ show edit update destroy ]

  # GET /accounts or /accounts.json
  def index
    # @accounts = Account.all
    if params[:filter].present?
      search_str=""
      search_arr=[]

      filter_params = params[:filter]

      @account_no = filter_params["account_no"]
    


      if @account_no.present?
        f_str = @account_no
        f_str = f_str.gsub("'","''")
        search_arr << "account_number iLike '#{f_str}' "
        # search_arr << "account_no iLIKE '#{@account_no}' "
      end

      logger.info "+++++++++++++++++++++++++++++++"
      logger.info search_arr.inspect

      search_str << search_arr.join(" and ")

      if !search_str.present?
        @accounts = Account.all
      else
        @accounts = Account.where(search_str).order(created_at: :desc)
        logger.info "THIS IS THE Account NUMBER WE ARE LOOKING FOR === #{@accounts.inspect} === "
      end

    else
      @accounts = Account.all
    end
  end

  # GET /accounts/1 or /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts or /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to account_url(@account), notice: "Account was successfully created." }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1 or /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to account_url(@account), notice: "Account was successfully updated." }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1 or /accounts/1.json
  # def destroy
  #   @account.destroy

  #   respond_to do |format|
  #     format.html { redirect_to accounts_url, notice: "Account was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    if @account.active_status
      @account.active_status = false
      @account.save(validate: false)
      respond_to do |format|
        format.html { redirect_to accounts_url, notice: "Account was successfully closed." }
        format.json { head :no_content }
      end
    else
      @account.active_status = true
      @account.save(validate: false)
      respond_to do |format|
        format.html { redirect_to accounts_url, notice: "Account was successfully reopened." }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:account_name, :account_number, :branch, :active_status, :del_status)
    end
end
