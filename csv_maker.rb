#!/usr/bin/env ruby

require 'pdf-reader'

indictates_front_of_card = "copyright"

relative_directory = "../raw_pdfs/"
pdfs = Dir.entries(relative_directory)
pdfs.each do |individual_pdf|

  #for easy development; remove to do each one
  next unless individual_pdf == "Ethics .pdf"

  reader = PDF::Reader.new("#{relative_directory}#{individual_pdf}")

  #for each PDF, first pass determines which pages are questions
  is_question = Array.new(reader.page_count)

  counter = 0 
  reader.pages.each do |page|
    text = page.text
    if text.include?(indictates_front_of_card)
      is_question[counter] = true
    else
      is_question[counter] = false
    end
    counter += 1
  end

  #create CSV for export, referring to what images will be called

  #second pass should create image files 
  puts is_question
  puts pdfs
end

