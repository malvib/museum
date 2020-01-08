class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :artist
      t.string :date
      t.string :size
      t.string :technic
      t.string :reference
      t.string :place
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
