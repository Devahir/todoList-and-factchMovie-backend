class MoviesController < ActionController::Base

    def index 
        data = ["lord of ringd", "harry potter", ]
        render : json => data
    end

end
