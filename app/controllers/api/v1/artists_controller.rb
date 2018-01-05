module Api
  module V1
    class ArtistsController < ApiController

      def index
        render json: Artist.all, status: :ok
      end

      def search
        term = params[:term] || nil
        if term
          artists = Artist.where(
            "name LIKE :term OR handle LIKE :term OR tags LIKE :term OR location LIKE :term", term: "%#{term}%"
          )
        else
          artists = Artist.all
        end

        render json: artists, status: :ok

      end
      
      # TODO: if i had more time, add the rest of the CRUD operations for the artists resource


      private

    end
  end
end
