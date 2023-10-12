namespace :import_example_csv_data do
  task :import_data => :environment do
    require 'csv'

    CSV.foreach('exampledata.csv', headers: true) do |row|
      User.create(firstname: row['firstname'], lastname: row['lastname'], email: row['email'])
    end
  end
end
