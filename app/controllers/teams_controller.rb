class TeamsController < ApplicationController
	
	def show
		@team = Team.find(params[:id])
	end

	def index
		@team = Team.all			
	end

	def new
		@team = Team.new
	end

	 def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'team was successfully created.' }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render action: "new" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @team = Team.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(team_params)
        format.html { redirect_to @team, notice: 'team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy

		respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
	end

	private

	def team_params
		params.require(:team).permit(:name, :info, :image_url, :group)
	end
end
