class UsersController < ApplicationController
    def index
      @users = User.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @products }
      end
    end
    
    # GET /products/1
    # GET /products/1.xml
    
    def show
      if params[:id]
        @user = User.find(params[:id])
      elsif params[:username]
        @user = User.find_by_username(params[:username])
       end
      @product = @user.products
        
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @product }
        end
      end
    def following
      @title = "Following"
      @user = User.find(params[:id])
      @users = @user.following.paginate(:page => params[:page])
      render 'show_follow'
    end
    def followers
      @title = "Following"
      @user = User.find(params[:id])
      @users = @user.followers.paginate(:page => params[:page])
      render 'show_follow'
    end
    
end

