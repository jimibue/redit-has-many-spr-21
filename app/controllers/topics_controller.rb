class TopicsController < ApplicationController
  before_action :get_sub
  before_action :get_topic, only: [:show, :update, :edit, :destroy]

    def show
      # @sub = Sub.find(params[:sub_id])
      
      #@topic = Topic.find(params[:id])
      # do it this way
      # @topic =  @sub.topics.find(params[:id])
      puts @topic
      render component: "Topic", props:{topic: @topic, sub: @sub}
    end
    
    # GET	/subs/:sub_id/topics/new
    def new
      # @sub = Sub.find(params[:sub_id])
      render component: "TopicNew", props: {sub: @sub}
    end

    # Parameters: {"topic"=>{"name"=>"sdfgsdf", "body"=>"gsdfgsdfg"}, "sub_id"=>"3"}
    def create
   
      #creates in memory, not db
      topic = @sub.topics.new(topic_params)
      if (topic.save)
        # iwant to go to sub_show
        # redirect_to sub_path(@sub)
        redirect_to  sub_topic_path(@sub, topic)
      else
        render component: "TopicNew", props: {sub: @sub}
      end
      
    end

    # returning the form
    # GET	/subs/:sub_id/topics/:id/edit(
    def edit
      # @topic = @sub.topics.find(params[:id]) 
      
      render component: "TopicEdit", props:{sub:@sub, topic:@topic}
    end

    def update
      # @topic = @sub.topics.find(params[:id]) 
      
      # no validation do not need if else 
      @topic.update(topic_params)
      redirect_to  sub_topic_path(@sub, @topic)
  
      

    end

    def we
     render json: {we: params[:we]}
    end

    private
    
    def get_sub
      @sub = Sub.find(params[:sub_id])
    end
   
    def get_topic
      @topic = @sub.topics.find(params[:id]) 
    end

    def topic_params
      #PARAMS =  {"topic"=>{"name"=>"sdfgsdf", "body"=>"gsdfgsdfg"}, "sub_id"=>"3"}
      params.require(:topic).permit(:name, :body) 
   
    end

end
