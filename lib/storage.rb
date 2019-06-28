require 'csv'

class Storage
  def initialize(adapter_klass)
    @adapter_klass = adapter_klass
  end

  def data
    return @data if defined?(@data)

    @data = CSV.parse(file_contents, headers: true)
    @data = @data.map { |row| adapter_klass.new(row) }
  end

  private

  attr_reader :adapter_klass

  def file_contents
    return @file_contents if defined?(@file_contents)
    @file_contents = File.read("resources/#{adapter_klass.name}.csv")
  end
end
