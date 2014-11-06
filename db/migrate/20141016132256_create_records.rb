class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :acell
      t.integer :bcell
      t.integer :ccell
      t.integer :dcell
      t.integer :ecell, limit: 5
      t.integer :fcell, limit: 5
      t.integer :gcell
      t.integer :hcell
      t.text :icell
      t.text :jcell
      t.decimal :kcell, precision: 10, scale: 2
      t.integer :lcell
      t.integer :mcell
      t.decimal :ncell, precision: 10, scale: 2
      t.integer :ocell
      t.integer :pcell
      t.decimal :qcell, precision: 10, scale: 2
      t.decimal :rcell, precision: 10, scale: 2

      t.timestamps
    end
  end
end
