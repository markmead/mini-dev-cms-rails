class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    render template: "/templates/#{@page.template.underscore}"
  end

  private

  def page_params
    params.require(:page).permit(:title, :template, content: {})
  end
end
