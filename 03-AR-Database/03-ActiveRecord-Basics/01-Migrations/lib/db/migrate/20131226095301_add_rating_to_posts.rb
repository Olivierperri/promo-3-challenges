# 20140725174200_add_created_at_to_articles.rb
class AddRatingToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rating, :integer
  end
end