class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|

      t.timestamps
      t.text :description
      t.string :title
    end
  end
end
