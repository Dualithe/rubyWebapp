class TimeController < ApplicationController
    def index
        @time = Time.now
    end
end
