require 'rubygems'
require 'crack'
require 'json'

toilet_xml = Crack::XML.parse(File.read('vendor/toilet.xml'))

toilet_json = toilet_xml.to_json

output = File.open('vendor/toilets.json', 'w')
output << toilet_json
output.close
