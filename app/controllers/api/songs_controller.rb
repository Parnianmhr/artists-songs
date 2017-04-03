class Api::SongsController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def index
        songs = Song.all
        render status: 200, json: songs
    end

    def create
        song = @song.new

        if song.save
            render status: 200, json: song
        else
            render status: 422, json: {
                errors: song.errors
            }.to_json
        end
    end

    def destroy
        song = @song.find(params[:id])
        song.destroy

        render status: 200, json: {
            message: 'song successfully deleted'
        }.to_json
  end
end
