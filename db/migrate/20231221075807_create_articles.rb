class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :category
      t.string :text
      t.string :tag # 別のテーブルと関連付ける

      t.timestamps
    end
  end
end
