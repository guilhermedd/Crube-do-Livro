class AddColumnsToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :pub, :string
  end
end
