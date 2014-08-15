require 'csv'

module Parser
  # TODO method to parse file
  def self.import(file)
    list = []
    CSV.foreach(file, :col_sep => ';', :headers => true, :header_converters => :symbol) do |row|
      list << row
    end
    list
  end

  # TODO method to write to file

end
