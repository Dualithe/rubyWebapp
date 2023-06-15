class MessageController < ApplicationController
    protect_from_forgery with: :null_session
@@message = "text"

    def index
	render html: @@message
    end

    def write
        @@message = params["text"]
    end
end
