class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :name, null: false
      t.integer :github_id, null: false 
      t.integer :stargazers_count, null: false, default: 0

      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
