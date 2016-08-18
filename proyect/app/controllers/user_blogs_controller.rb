class UserBlogsController < ApplicationController
  before_action :set_user_blog, only: [:show, :edit, :update, :destroy]

  # GET /user_blogs
  # GET /user_blogs.json
  def index
    @user_blogs = UserBlog.all
  end

  # GET /user_blogs/1
  # GET /user_blogs/1.json
  def show
  end

  # GET /user_blogs/new
  def new
    @user_blog = UserBlog.new
  end

  # GET /user_blogs/1/edit
  def edit
  end

  # POST /user_blogs
  # POST /user_blogs.json
  def create
    @user_blog = UserBlog.new(user_blog_params)

    respond_to do |format|
      if @user_blog.save
        format.html { redirect_to @user_blog, notice: 'User blog was successfully created.' }
        format.json { render :show, status: :created, location: @user_blog }
      else
        format.html { render :new }
        format.json { render json: @user_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_blogs/1
  # PATCH/PUT /user_blogs/1.json
  def update
    respond_to do |format|
      if @user_blog.update(user_blog_params)
        format.html { redirect_to @user_blog, notice: 'User blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_blog }
      else
        format.html { render :edit }
        format.json { render json: @user_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_blogs/1
  # DELETE /user_blogs/1.json
  def destroy
    @user_blog.destroy
    respond_to do |format|
      format.html { redirect_to user_blogs_url, notice: 'User blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_blog
      @user_blog = UserBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_blog_params
      params.require(:user_blog).permit(:document, :name, :lastname, :phone, :email)
    end
end
