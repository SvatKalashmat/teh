class TournamentMembersController < ApplicationController
  before_action :set_tournament_member, only: [:show, :edit, :update, :destroy]

  # GET /tournament_members
  # GET /tournament_members.json
  def index
    @tournament_members = TournamentMember.all
  end

  # GET /tournament_members/1
  # GET /tournament_members/1.json
  def show
  end

  # GET /tournament_members/new
  def new
    @tournament_member = TournamentMember.new
  end

  # GET /tournament_members/1/edit
  def edit
  end

  # POST /tournament_members
  # POST /tournament_members.json
  def create
    @tournament_member = TournamentMember.new(tournament_member_params)

    respond_to do |format|
      if @tournament_member.save
        format.html { redirect_to @tournament_member, notice: 'Tournament member was successfully created.' }
        format.json { render :show, status: :created, location: @tournament_member }
      else
        format.html { render :new }
        format.json { render json: @tournament_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournament_members/1
  # PATCH/PUT /tournament_members/1.json
  def update
    respond_to do |format|
      if @tournament_member.update(tournament_member_params)
        format.html { redirect_to @tournament_member, notice: 'Tournament member was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament_member }
      else
        format.html { render :edit }
        format.json { render json: @tournament_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_members/1
  # DELETE /tournament_members/1.json
  def destroy
    @tournament_member.destroy
    respond_to do |format|
      format.html { redirect_to tournament_members_url, notice: 'Tournament member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_member
      @tournament_member = TournamentMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_member_params
      params.require(:tournament_member).permit(:team_id, :tournament_id)
    end
end
