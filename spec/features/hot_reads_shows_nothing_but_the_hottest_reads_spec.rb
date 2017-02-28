require 'rails_helper'

describe "user visits the page" do
  scenario "and sees no links because there aren't any" do
    visit "/"
    
    expect(page).to have_content("🔥🔥🔥🔥🔥🔥🔥🔥🔥HOT READS mk2🔥🔥🔥🔥🔥🔥🔥🔥🔥")
    expect(page).to have_content("🔥🔥🔥🔥🔥🔥🔥🔥🔥~~ read hotter ~~🔥🔥🔥🔥🔥🔥🔥🔥🔥")
    expect(page).to have_content("Top 10 Hottest Reads")
  end

  scenario "and sees one link because there's just one" do
    link = Fabricate(:link)
    visit "/"
    
    expect(page).to have_content("🔥🔥🔥🔥🔥🔥🔥🔥🔥HOT READS mk2🔥🔥🔥🔥🔥🔥🔥🔥🔥")
    expect(page).to have_content("Top 10 Hottest Reads")
    expect(page).to have_content(link.url)
    expect(page).to have_content(link.read_count)
  end

  scenario "and sees ten links because there's ten" do
    link_1 = Fabricate(:link, url: "https://www.zombo1.com")
    link_2 = Fabricate(:link, url: "https://www.zombo2.com")
    link_3 = Fabricate(:link, url: "https://www.zombo3.com")
    link_4 = Fabricate(:link, url: "https://www.zombo4.com")
    link_5 = Fabricate(:link, url: "https://www.zombo5.com")
    link_6 = Fabricate(:link, url: "https://www.zombo6.com")
    link_7 = Fabricate(:link, url: "https://www.zombo7.com")
    link_8 = Fabricate(:link, url: "https://www.zombo8.com")
    link_9 = Fabricate(:link, url: "https://www.zombo9.com")
    link_10 = Fabricate(:link, url: "https://www.zombo10.com")
    visit "/"
    
    expect(page).to have_content("🔥🔥🔥🔥🔥🔥🔥🔥🔥HOT READS mk2🔥🔥🔥🔥🔥🔥🔥🔥🔥")
    expect(page).to have_content("Top 10 Hottest Reads")
    expect(page).to have_content(link_1.url)
    expect(page).to have_content(link_2.read_count)
    expect(page).to have_content(link_3.read_count)
    expect(page).to have_content(link_4.url)
    expect(page).to have_content(link_10.url)
  end
  
  scenario "and sees ten links even though there's 12" do
    link_1 = Fabricate(:link, url: "https://www.zombo1.com")
    link_2 = Fabricate(:link, url: "https://www.zombo2.com")
    link_3 = Fabricate(:link, url: "https://www.zombo3.com")
    link_4 = Fabricate(:link, url: "https://www.zombo4.com")
    link_5 = Fabricate(:link, url: "https://www.zombo5.com")
    link_6 = Fabricate(:link, url: "https://www.zombo6.com")
    link_7 = Fabricate(:link, url: "https://www.zombo7.com")
    link_8 = Fabricate(:link, url: "https://www.zombo8.com")
    link_9 = Fabricate(:link, url: "https://www.zombo9.com")
    link_10 = Fabricate(:link, url: "https://www.zombo10.com")
    link_11 = Fabricate(:link, url: "https://www.zombo11.com")
    link_12 = Fabricate(:link, url: "https://www.zombo12.com")
    visit "/"
    
    expect(page).to have_content("🔥🔥🔥🔥🔥🔥🔥🔥🔥HOT READS mk2🔥🔥🔥🔥🔥🔥🔥🔥🔥")
    expect(page).to have_content("Top 10 Hottest Reads")
    expect(page).to have_content(link_1.url)
    expect(page).to have_content(link_2.read_count)
    expect(page).to have_content(link_3.read_count)
    expect(page).to have_content(link_4.url)
    expect(page).to have_content(link_10.url)
    expect(page).to have_selector('tr', count: 10)
  end
end