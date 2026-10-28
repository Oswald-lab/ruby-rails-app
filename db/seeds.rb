Note.find_or_create_by!(title: "Welcome") { |n| n.body = "Seeded note" }
