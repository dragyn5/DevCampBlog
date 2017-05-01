class AddSubtitleToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :subtitle, :string
  end
end
