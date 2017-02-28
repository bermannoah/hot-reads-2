Fabricator(:link) do
  url           "#{Faker::Internet.unique.url}"
  read_count "#{Faker::Number.unique.between(1, 100)}"
end