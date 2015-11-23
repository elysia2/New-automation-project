def headers
  page.response_headers.each_with_object({}) do |(k,v),h|
    h[k.downcase] = v
  end
end

# Given

Given /^I am on "(.*)" home page/ do |pcode|
  visit $site.page_for("/#{pcode}")
end

Given /^I opt in to (Mosaic|Classic)/ do |templ|
  if templ == 'Mosaic'
    click_on 'Try it out now'
  else
    click_on 'Return to the current design'
  end
end

# When

When /^I visit the (Mosaic|Classic) page "(.*?)"$/ do |templ, path|
  $user.use_template(templ)
  visit $site.page_for(path)
end

When /^I visit the (Mosaic|Classic) page "(.*?)" in proof mode$/ do |templ, path|
  $user.use_template(templ)
  visit $site.page_for(path, proof: true)
end

Then /^I click on "([^"]*)" within the "(.*)" section$/ do |link, sect|
  section = sect.downcase.strip.gsub(' ', '-')
  xpath = %Q(
    //section[@aria-labelledby="#{section}"]
    //div[contains(@class,"box") or contains(@class, "js-collapsible-section")]
  )
  within(:xpath, xpath) { click_on link }
end

# Then

Then /^I click on "([^"]*)"( within the article text)?$/ do |link, sect|
  if sect
    within(:xpath, '//div[@class="js-article-content"] | //div[@class="article-body"]') { click_on link }
  else
    click_on link
  end
end

Then /^I will download a file with content "([^"]*)"$/ do |text|
  sleep 4
  expect(page.status_code).to eq 200
  expect(page.body).to have_text(text)
end

Then /^I will download the (.*) file "([^"]*)"$/ do |type, file|
  sleep 4
  expect(page.status_code).to eq 200

  expect(headers['content-type']).to eq %Q(application/#{type})

  # is an attachment or is displaying it online
  if headers['content-disposition']
    expect(headers['content-disposition']).to eq %Q(attachment; filename="#{file}")
  end
end

Then /I will get a (.*)/ do | status_code|
  expect(page.status_code).to eq status_code.to_i
end

Then /^I will be redirected to( the)? "(.*?)"( domain)?$/ do |_, path, domain|
  if domain
    expect(page.current_url).to match(%r{http://#{path}/})
  else
    expect($site.current_path).to eq path
  end
end
