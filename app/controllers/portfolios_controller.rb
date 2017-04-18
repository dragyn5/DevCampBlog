class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
    end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end
  
 def new
    @portfolio_items = Portfolio.new
  end

   def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html {redirect_to portfolios_path, notice: 'Your portfolio item is live' }
      else
        format.html { render :new }
      end
    end
  end


def edit
    @portfolio_items = Portfolio.find(params[:id])
end

  def update
    @portfolio_items = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'the record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
def show
    @portfolio_items = Portfolio.find(params[:id])
end

def destroy
  #perform the lookup
    @portfolio_items = Portfolio.find(params[:id])
  #destroy the record
    @portfolio_items.destroy

  #redirect  
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }

   
  end
end





end