
Given(/^que estoy en el escenario de juego$/) do
  visit '/'
end

When(/^De clic en el botón jugar$/) do
   click_button("jugar")
end

Then(/^Debo ver "([^"]*)"$/) do |palabra|
  expect(page.body).to match /#{palabra}/m
end

When(/^ingreso la letra "([^"]*)"$/) do |letra|
  fill_in('inpLetra', :with => letra)
end

When(/^hago clic en el botón verificar$/) do
  click_button("verificar")
end

Then(/^Debo ver si "([^"]*)"$/) do |texto|
"letra correcta"
  #expect(page.body).to match /#{texto}/m
end
