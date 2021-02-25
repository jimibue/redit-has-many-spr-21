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
         #this has no id/is not in db
        @sub = Sub.new
        render component: "SubForm", props: {sub: @sub}
    end

    def create
        Sub.create(name: params[:sub][:name] )
        redirect_to root_path
    end

    def edit
        #this has an id/is in db
        @sub = Sub.find(params[:id])
        render component: "SubForm", props: {sub: @sub}
    end

    def update
        @sub = Sub.find(params[:id])
        @sub.update(name: params[:sub][:name]) 
        redirect_to root_path
    end

    def destroy
      @sub = Sub.find(params[:id])
      @sub.destroy
      render json: @sub
    end

 
end
