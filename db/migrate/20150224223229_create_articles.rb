class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :category
      t.string :title
      t.string :content
    end
  end
end
