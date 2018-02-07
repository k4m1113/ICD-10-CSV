class CSVGenerator
  def generateCSV
    # raw text file from CMS.gov
    text_file = File.open("codes.txt")

    # file for output
    full_csv_file = File.open("codes.csv", "w")
    cats_file = File.open("categories.csv", "w")

    cats = []

    text_file.each do |line|
      # first six characters
      line_id = line[0..5]

      # DX Code
      code = line[6..13]
      code.strip!

      # category == 0; diagnosis == 1
      diagnosis_type = line[14..15].strip!.to_i

      # abbreviated description
      abbrev = line[16..76]
      abbrev.strip!

      # full description
      full = line[77..-2]

      # add diagnosis to codes CSV unless it is a category
      if diagnosis_type == 1
        cat_code = cats.last[:id]
        dx_code = code.gsub(cat_code, '')
        # edit this line to reformat/rearrange your CSV as desired
        newline = "#{cat_code},#{dx_code},#{code},\"#{abbrev}\", \"#{full}\",\"#{cats.last[:title]}\""
        full_csv_file.puts newline
      else
        # add to categories CSV if not a specific diagnosis
        cats << {id: code, title: full}
        newline = "#{code},\"#{full}\""
        cats_file.puts newline
      end
    end
    "csv file successfully created at #{full_csv_file.path}"
  end
end
