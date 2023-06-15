class StaticController < ApplicationController
    @@counter = 0

    def index
        @@counter += 1
        render plain: @@counter
    end
end
