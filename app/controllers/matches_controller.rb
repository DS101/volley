class MatchesController < ApplicationController
	def show
		@match = Match.find(params[:id])
	end

	def index
		@match = Match.all			
	end
	
	def new
		@match = Match.new
	end

	def create
		@match = Match.new(match_params)

		respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'match was successfully created.' }
        format.json { render json: @match, status: :created, location: @match }
      else
        format.html { render action: "new" }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
	end

	 def update
    @match = Match.find(params[:id])

    respond_to do |format|
      if @match.update_attributes(match_params)
        format.html { redirect_to @match, notice: 'match was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
		@match = Match.find(params[:id])
		@match.destroy

		respond_to do |format|
      format.html { redirect_to matches_url }
      format.json { head :no_content }
    end
	end
	

	private

	def match_params
		params.require(:match).permit(:home_team_id, :away_team_id,
		 :home_team_set, :away_team_set)
	end
end
