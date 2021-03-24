# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

hairdressers = Hairdresser.create!([{ name: "Elsa" }, { name: "Lucy" }])

services =  Service.create!([{ name: "Haircut" }, { name: "Styling" }, { name: "Color" }, { name: "Waxing" }, { name: "Perms" }, { name: "Other" }])
#   
