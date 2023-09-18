# csv_product_report

**Product Report Generator**


This is a Ruby project that includes a script and associated tests for generating a product report in JSON format from a CSV file.

The script reads a CSV file containing product data and converts it into a JSON report. 

The project also includes unit tests to ensure the correctness of the script.

**Project Structure**

The project is structured as follows:

product_report.rb: The main Ruby script that reads the CSV file, generates the JSON report, and handles potential errors.

products.csv: The sample CSV file containing the product data. You can replace this file with your own CSV file or modify it as needed.

product_report_spec.rb: The unit tests for the ProductReport script. These tests verify the correctness of the read_csv and generate_report methods.

**Usage**

To use the script, follow these steps:

Ensure you have Ruby installed on your system.
Clone the GitHub repository: git clone https://github.com/umairchd/csv_product_report.git
Navigate to the project directory: cd csv_product_report
Ensure that your CSV file is named products.csv and is placed in the project directory. Modify the file content as needed.
Run the script: ruby product_report.rb
The script will read the CSV file, generate a JSON report, and display the report on the console.

**Testing**

To run the unit tests, follow these steps:


Make sure you have the RSpec gem installed (gem install rspec) if you haven't already.

Run the tests: rspec product_report_spec.rb

The tests will verify that the read_csv and generate_report methods work as expected.


**Error Handling**


The script includes error handling to gracefully handle potential issues. 

If the CSV file is not found, an Errno::ENOENT error is raised and an error message is displayed. 

If the CSV file has an invalid format, a CSV::MalformedCSVError error is raised and an error message is displayed.


**Dependencies**


The project depends on the following Ruby gems:

csv: Used for reading the CSV file.

json: Used for generating the JSON report.

rspec: Used for testing the script.
