class ArticlesController < ApplicationController
    def index
        @livros = Article.all
    end

    def show
        @livro = Article.find(params[:id])
    end

    def new
    end

    def edit
        @livro = Article.find(params[:id])
    end

    def create
        @livro = Article.new(article_params)

        if @livro.save
        redirect_to @livro
        else
            render 'new'
        end
    end

    def update
        @livro = Article.find(params[:id])

        if @livro.update(article_params)
            redirect_to @livro 
        else
            render 'edit'
        end
    end

    def destroy
        @livro = Article.find(params[:id])
        @livro.destroy

        redirect_to articles_path
    end

    private
    
    def article_params
        params.require(:article).permit(:title, :text, :pub)
    end
end
