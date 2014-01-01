namespace :import do

  task :films_csv => :environment do |t, args|
    verbose = ENV["VERBOSE"] == "true" ? true : false

    file = ARGV[1]
    format = ARGV[2]

    puts "importing from csv file: #{file}"

    Rails.logger = Logger.new(STDOUT)
    Rails.logger.level = Logger::INFO unless verbose
    CsvImportService.new(file, format).import
  end
end
