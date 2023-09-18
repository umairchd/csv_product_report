require 'csv'
require 'json'

def read_csv(file_path)
  products = []
  CSV.foreach(file_path, headers: true) do |row|
    products << row.to_h
  end
  products
end

def generate_report(products)
  JSON.generate(products)
end

# Main script
csv_file = 'products.csv'
begin
  products = read_csv(csv_file)
  report = generate_report(products)
  puts report
rescue Errno::ENOENT
  puts "Error: CSV file '#{csv_file}' not found."
rescue CSV::MalformedCSVError
  puts "Error: Invalid CSV file format."
end