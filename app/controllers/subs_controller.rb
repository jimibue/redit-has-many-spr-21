class SubsController < ApplicationController
    def index
        @subs = Sub.all
        render component: "Subs", props:{subs:@subs}
    end

    def show
        @sub = Sub.find(params[:id])
        @topics = @sub.topics
        render component: "Sub", props: {sub: @sub, topics: @topics}
    end

    def new
        render json: {subs: Sub.all}
    end
end
