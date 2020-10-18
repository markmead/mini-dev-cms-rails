class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :template
      t.text :content

      t.timestamps
    end
  end
end
