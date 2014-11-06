class ChangeCellsFormatInRecords < ActiveRecord::Migration


  def up
    change_table :records do |t|
      t.change :ecell, :bigint
      t.change :fcell, :bigint
    end
  end

  def down
    change_table :records do |t|
      t.change :ecell, :integer
      t.change :fcell, :integer
    end
  end

end
