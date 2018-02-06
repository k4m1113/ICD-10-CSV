class CSVGenerator
  def generateCSV
    # raw text file from CMS.gov
    text_file = File.open("codes.txt")

    # file for output
    csv_file = File.open("yourcodeshere.csv", "w")

    text_file.each do |line|
      # first eight characters minus spaces
      code = line[0..7]
      code.strip!

      # last characters minus \n
      description = line[8..-2]

      # add your own formatting by changing this line
      newline = "#{code},\"#{description}\""

      # output to yourcodeshere.csv
      csv_file.puts newline
    end
    "csv file successfully created at #{csv_file.path}"
  end
end
