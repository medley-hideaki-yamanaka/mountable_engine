require_dependency "blog/application_controller"
require './engines/admin/app/public/admin/user_server'

module Blog
  class ArticlesController < ApplicationController
    protect_from_forgery
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    # GET /all_articles
    def all
      @articles = AllArticlesQuery.new.call
      render json: @articles, status: :ok
    end

    # GET /user_articles/:id
    def user_articles
      id = params[:id]
      server = Admin::UserServer.new
      request = Admin::UserRequest.new(id: id.to_i)
      response = server.get_user(request)
      render json: response, status: :ok
    end

    # GET /articles
    def index
      @articles = AllArticlesQuery.new.call
    end

    # GET /articles/:id
    def show
    end

    # GET /articles/new
    def new
      @article = Article.new
    end

    # GET /articles/:id/edit
    def edit
    end

    # POST /articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /articles/:id
    def update
      if @article.update(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /articles/:id
    def destroy
      @article.destroy
      redirect_to articles_url, notice: 'Article was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Article.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def article_params
        params.require(:article).permit(:title, :text)
      end
  end
end
