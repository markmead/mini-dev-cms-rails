class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    render template: "/templates/#{@page.template.underscore}"
  end

  def create
    @page = Page.new page_params

    if @page.save
      redirect_to @page
    else
      render :show
    end
  end

  def update
    @page = Page.find params[:id]
    
    if @page.update
      redirect_to @page
    else
      render :show
    end
  end

  private

  def page_params
    params.require(:page).permit(:title, :template, content: {})
  end
end
