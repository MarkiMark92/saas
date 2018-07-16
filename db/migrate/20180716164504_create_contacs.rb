class CreateContacs < ActiveRecord::Migration[5.0]
  def change
    create_table :contacs do |t|
      t.string :name
      t.string :email
      t.text :kommentar
      t.timestamps
      
    end
  end
end
