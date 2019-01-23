namespace :import do
  desc "Import merchants from CSV file"

  task merchant: :environment do
    CSV.foreach('lib/csv_data/merchants.csv', headers: true) do |row|
      Merchant.create(row.to_h)
    end
  end
end
