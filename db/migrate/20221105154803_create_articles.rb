class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :data_source_name
      t.string :namespace

      t.timestamps
    end
  end
end
