class ArticlesController < ApplicationController
	def index
		# Rerieve all articles from model.
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new 
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		# Shows parameters and values on page.
		# render plain: params[:article].inspect

		# Attributes of model are mapped to db columns.
		@article = Article.new(article_params)

		# If save model in db is true.
		if @article.save
			# Issue another request.
			redirect_to @article
		# If false go back to the form on new.html 
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
