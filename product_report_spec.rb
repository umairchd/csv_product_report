require 'rspec'
require_relative 'product_report'

RSpec.describe 'ProductReport' do
  let(:csv_file) { 'products.csv' }

  describe '#read_csv' do
    it 'reads the CSV file and returns an array of product hashes' do
      products = read_csv(csv_file)
      expect(products).to be_an(Array)
      expect(products).not_to be_empty
      expect(products[0]).to include(
        'Product ID' => '1',
        'Product Name' => 'Product 1',
        'Description' => 'Description 1',
        'Price' => '10.00',
        'Availability' => 'In Stock'
      )
    end
  end

  describe '#generate_report' do
    it 'generates a JSON report from an array of product hashes' do
      products = [
        {
          'Product ID' => '1',
          'Product Name' => 'Product 1',
          'Description' => 'Description 1',
          'Price' => '10.00',
          'Availability' => 'In Stock'
        },
        # Add more product hashes for testing
      ]
      report = generate_report(products)
      expect(report).to be_a(String)
      expect { JSON.parse(report) }.not_to raise_error
    end
  end
end