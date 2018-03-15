class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :edit, :update]

  # GET /team_members
  # GET /team_members.json
  def index
    @team_members = TeamMember.where(team_id: params[:team_id])
  end

  # GET /team_members/1
  # GET /team_members/1.json
  def show
  end

  # GET /team_members/new
  def new
    @team_member = TeamMember.new
  end

  # GET /team_members/1/edit
  def edit
  end

  # POST /team_members
  # POST /team_members.json
  def create
    @team_member = TeamMember.new(team_member_params)
    @team_member.user_id = current_user.id

    respond_to do |format|
      if @team_member.save
        format.html { redirect_to team_team_members_path, notice: 'You joined the team' }
        format.json { render :index, status: :created, location: @team_member }
      else
        format.html { redirect_to team_team_members_path, alert: 'User already exist' }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_members/1
  # PATCH/PUT /team_members/1.json
  def update
    respond_to do |format|
      if @team_member.update(team_member_params)
        format.html { redirect_to @team_member, notice: 'Team member was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_member }
      else
        format.html { render :edit }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_members/1
  # DELETE /team_members/1.json
  def destroy
    team_member = TeamMember.find_by(team_id: params[:team_id], user_id: params[:id])
    team_member.destroy
    respond_to do |format|
      format.html { redirect_to team_team_members_path, notice: 'You leave the team' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member
      @team_member = TeamMember.find_by(team_id: params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_params
      params.permit(:role, :team_id, :user_id, :id)
    end
end
