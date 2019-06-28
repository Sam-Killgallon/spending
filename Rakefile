require 'rake/clean'

TYPES = %i[credit_card current_account]

task :default => :build_csvs

task :build_csvs do
  TYPES.each { |type| concat_files(type) }
end
CLOBBER.push(TYPES.map { |type| "resources/#{type}.csv" })

def concat_files(type)
  csvs = Dir.glob("resources/src/#{type}/*.csv")
  data = []
  csvs.each { |filepath| data += File.readlines(filepath) }

  # If there is overlap between files, remove the duplicates
  data.uniq!
  File.write("resources/#{type}.csv", data.join)
end
