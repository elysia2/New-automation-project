Then /^I will see "([^"]*)"$/ do |content|
  expect(page).to have_content(content)
end

Then /^I will( NOT)? see the "([^"]*)" (link|button)$/ do |negation, content, _|
  if negation
    expect(page).to have_no_link(content)
  else
    expect(page).to have_link(content)
  end
end

Then /^I will see the (Mosaic|Classic) design/ do |templ|
  if templ == 'Mosaic'
    expect(page).to have_content 'You are viewing this page in the new nature.com design'
  else
    expect(page).to have_content 'Would you like to trial the new nature.com design?'
  end
end

Then /^I will see the full size image "(.*?)"/ do |img|
  expect(page.find('figure img')['src']).to match %r{/w926/#{img}}
end

Then 'I will see see global "Webtrends" metadata in the page source' do
  tag = /<meta name="WT.template" content="(classic|mosaic)">/
  expect(page.html).to match(tag)
end

Then /^I will( NOT)? see "([^"]*)" metadata in the page source/ do |negation, type|
  case type
  when 'Dublin Core'    then tag = '<meta name="dc.publisher" content="Nature Publishing Group">'
  when 'Google Scholar' then tag = '<meta name="citation_language" content="en">'
  when 'Webtrends'      then tag = '<meta name="WT.cg_s" content="Article">'
  when 'Open Graph'     then tag = '<meta property="og:type" content="article">'
  else fail 'Unrecognised metadata type'
  end

  if negation
    expect(page.html).to_not include(tag)
  else
    expect(page.html).to include(tag)
  end
end
