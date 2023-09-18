# csv_product_report

**Product Report Generator**&nbsp; 


This is a Ruby project that includes a script and associated tests for generating a product report in JSON format from a CSV file.
The script reads a CSV file containing product data and converts it into a JSON report. 
The project also includes unit tests to ensure the correctness of the script.&nbsp; 

**Project Structure**&nbsp; 

The project is structured as follows:&nbsp; 
product_report.rb: The main Ruby script that reads the CSV file, generates the JSON report, and handles potential errors.&nbsp; 
products.csv: The sample CSV file containing the product data. You can replace this file with your own CSV file or modify it as needed.&nbsp; 
product_report_spec.rb: The unit tests for the ProductReport script. These tests verify the correctness of the read_csv and generate_report methods.&nbsp; 

**Usage**&nbsp; 

To use the script, follow these steps:&nbsp; 

Ensure you have Ruby installed on your system.&nbsp; 
Clone the GitHub repository: git clone https://github.com/umairchd/csv_product_report.git&nbsp; 
Navigate to the project directory: cd csv_product_report&nbsp; 
Ensure that your CSV file is named products.csv and is placed in the project directory. Modify the file content as needed.&nbsp; 
Run the script: ruby product_report.rb&nbsp; 
The script will read the CSV file, generate a JSON report, and display the report on the console.&nbsp; 

**Testing**&nbsp; 

To run the unit tests, follow these steps:&nbsp; 


Make sure you have the RSpec gem installed (gem install rspec) if you haven't already.&nbsp; 

Run the tests: rspec product_report_spec.rb&nbsp; 

The tests will verify that the read_csv and generate_report methods work as expected.&nbsp; 


**Error Handling**&nbsp; 


The script includes error handling to gracefully handle potential issues. &nbsp; 

If the CSV file is not found, an Errno::ENOENT error is raised and an error message is displayed. &nbsp; 

If the CSV file has an invalid format, a CSV::MalformedCSVError error is raised and an error message is displayed.&nbsp; 


**Dependencies**&nbsp; 


The project depends on the following Ruby gems:&nbsp; 

csv: Used for reading the CSV file.&nbsp; 

json: Used for generating the JSON report.&nbsp; 

rspec: Used for testing the script.&nbsp; 
