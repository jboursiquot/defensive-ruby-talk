#!/usr/bin/env ruby

require_relative "./custom_exceptions"
require_relative "./helpers"
require "csv"
require "ostruct"

begin

  file_to_parse = ARGV.first

  raise ValidationError.new "Please specify a file" if file_to_parse.nil?
  raise ValidationError.new "File #{file_to_parse} not found" unless File.exists?(File.expand_path(file_to_parse))

  bands = []
  invalid_bands = []

  CSV.foreach(file_to_parse) do |row|
    begin
      band = OpenStruct.new(name: row.first, url: row.last)
      validate_band! band
      bands << band
    rescue InvalidBandName, InvalidBandURL => e
      invalid_bands << band
    end
  end

  puts "Valid Bands"
  puts bands
  puts ""
  puts "Invalid Bands"
  puts invalid_bands

rescue ValidationError => e
  puts "Validation Error: #{e.message}"
rescue => e
  puts "Something went wrong: #{e.message}"
  puts e.backtrace
end
