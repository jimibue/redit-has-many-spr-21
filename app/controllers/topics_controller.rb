class TopicsController < ApplicationController

    def show
      @sub = Sub.find(params[:sub_id])
      
      #@topic = Topic.find(params[:id])
      # do it this way
      @topic =  @sub.topics.find(params[:id])
      puts @topic
      render component: "Topic", props:{topic: @topic, sub: @sub}
    end
end
