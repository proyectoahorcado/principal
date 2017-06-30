
Given(/^que estoy en el escenario de juego$/) do
  visit '/'
end

When(/^De clic en el botón jugar$/) do
   click_button("jugar")
end

Then(/^Debo ver "([^"]*)"$/) do |palabra|
  expect(page.body).to match /#{palabra}/m
end
