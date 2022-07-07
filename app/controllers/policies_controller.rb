class PoliciesController < ApplicationController
  before_action :set_policy, only: %i[ show edit update destroy ]

  # GET /policies or /policies.json
  def index
    if params[:filter].present?
      search_str=""
      search_arr=[]

      filter_params = params[:filter]

      @policy_no = filter_params["policy_no"]
    


      if @policy_no.present?
        f_str = @policy_no
        f_str = f_str.gsub("'","''")
        search_arr << "policy_number iLike '#{f_str}' "
        # search_arr << "policy_no iLIKE '#{@policy_no}' "
      end

      logger.info "+++++++++++++++++++++++++++++++"
      logger.info search_arr.inspect

      search_str << search_arr.join(" and ")

      if !search_str.present?
        @policies = Policy.all
      else
        @policies = Policy.where(search_str).order(created_at: :desc)
        logger.info "THIS IS THE POLICY NUMBER WE ARE LOOKING FOR === #{@policies.inspect} === "
      end

    else
      @policies = Policy.all
    end
  end

  # GET /policies/1 or /policies/1.json
  def show
  end

  # GET /policies/new
  def new
    @policy = Policy.new
  end

  # GET /policies/1/edit
  def edit
  end

  # POST /policies or /policies.json
  def create
    @policy = Policy.new(policy_params)

    respond_to do |format|
      if @policy.save
        format.html { redirect_to policy_url(@policy), notice: "Policy was successfully created." }
        format.json { render :show, status: :created, location: @policy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policies/1 or /policies/1.json
  def update
    respond_to do |format|
      if @policy.update(policy_params)
        format.html { redirect_to policy_url(@policy), notice: "Policy was successfully updated." }
        format.json { render :show, status: :ok, location: @policy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policies/1 or /policies/1.json
  def destroy
    @policy.destroy

    respond_to do |format|
      format.html { redirect_to policies_url, notice: "Policy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = Policy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def policy_params
      params.require(:policy).permit(:policy_number, :insured_name, :insured_from, :insured_to, :premium_due, :active_status, :del_status, :image)
    end
end
