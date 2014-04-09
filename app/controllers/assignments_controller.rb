class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  # GET /assignments
  # GET /assignments.json
  def index
    # @assignments = Assignment.all.order(:end_date)
    # @assignment = Assignment.new
    # @roles = Role.all.order(:name)
    # @users = User.all.order(:name)
    # @clients = Client.all.order(:name)
    # @role = Role.new
    # @client = Client.first #FIXME
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/1/edit
  def edit
    @roles = Role.all.order('lower(name)')
    @users = User.all.order('lower(name)')
    @client = @assignment.client
    render '_form'
  end

  # POST /assignments
  # POST /assignments.json
  def create
    
    @roles = Role.all
    @assignment = Assignment.new(assignment_params)
    if params[:free_system_input].present?
      new_role = Role.create(name: params[:free_system_input])
      @assignment.role_id = new_role.id
    end  

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to :back, notice: 'Assignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assignment }
        format.js { render layout: false }
      else
        format.html { redirect_to :back, error: 'Assignment was not created.'}
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    @roles = Role.all
    if params[:free_system_input].present?
      new_role = Role.create(name: params[:free_system_input])
      @assignment.role_id = new_role.id
    end 
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to :back, notice: 'Assignment was successfully updated.' }
        format.json { head :no_content }
        format.js { render layout: false }
      else
        format.html { redirect_to :back, notice: 'Assignment was not updated.' }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:user_id, :client_id, :role_id, :user, :client, :start_date, :end_date, :free_system_input)
    end
end
