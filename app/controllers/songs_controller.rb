class SongsController < ApplicationController
	
  def index
  	@songs = Song.all
  end

  def create
  	@song = Song.new(params[:song])
  		if @song.save
  			redirect_to root_path
  		end
  end

  def destroy
  	@song = Song.destroy
  end
end
