class PostsController < ApplicationController
  def index
  	if params[:search].present?
     @posts = Post.where("title = ? or content = ? or salary = ?", 
      params[:search], params[:search], params[:search])
    else  
     # @posts = Post.all
     @posts = Post.paginate(page: params[:page], per_page:2)

    end

  end

  def new
  	@post = Post.new
  end
  def edit
  	@post = Post.find(params[:id])
  end
  def show
		@post = Post.new
		@post = Post.find(params[:id])
	end
	

  def create
  	#byebug
  	@post =Post.new
	@post.title = params[:post][:title]
	@post.content = params[:post][:content]
 @post.salary = params[:post][:salary]
  if @post.save
		 redirect_to posts_path
		else
			@errors = @post_errors.to_a
		render :new
		end
	 
end
def update
		@post = Post.find(params[:id])
 
  if @post.update(title: params[:post][:title],content: params[:post][:content] ,salary:  params[:post][:salary])
  
		 redirect_to posts_path
		else
			@errors = @post_errors.to_a
		render :edit
		end
	end
	 def destroy
  		@post = Post.find(params[:id])
  		@post.destroy
  		redirect_to posts_path
  end
  def ajaxreq
    respond_to do |format|
      format.json { head :no_content }
      format.js {}
	end
  end

	
 end