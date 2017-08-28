class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4
      t.string :pic5
      t.string :pic6
      t.string :pic7
      t.string :pic8
      t.string :pic9
      t.string :pic10
      t.string :pic11
      t.string :pic12
      t.string :pic13
      t.string :pic14
      t.string :pic15
      t.string :pic16
      t.string :pic17
      t.string :pic18
      t.string :pic19
      t.string :pic20
      t.string :pic21
      t.string :pic22
      t.string :pic23
      t.string :pic24
      t.string :pic25

      t.timestamps
    end
  end
end
