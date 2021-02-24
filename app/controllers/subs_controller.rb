class SubsController < ApplicationController
    def index
        @subs = Sub.all
        render component: "Subs", props:{subs:@subs}
    end

    def new
        render json: {subs: Sub.all}
    end
end
