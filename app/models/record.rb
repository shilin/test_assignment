class Record < ActiveRecord::Base
    class << self
      attr_reader :column_names
    end
  @column_names = []

    ("a".."r").each do |letter|
      @column_names << (letter + "cell")
    end


  def self.import(file)
    spreadsheet = Roo::Excelx.new(file.path, nil, :ignore)

    (1..spreadsheet.last_row).each do |i|

      row = Hash.new
      ("a".."r").each_with_index do |letter,index|

        row[@column_names[index]] = spreadsheet.row(i)[index]
      end

      record = Record.new(row)
      record.save!
    end
  end

end
