require 'rails_helper'

feature 'Owner register property' do
  scenario 'successfully' do

    visit root_path
    click_on 'Cadastrar Imóvel'

    expect(page).to have_content 'Cadastrar um Novo Imóvel'

    fill_in 'Título', with: 'Apartamento aconchegante na praia'
    fill_in 'Local', with: 'Itanhaém'
    fill_in 'Tamanho', with: '70'
    fill_in 'Tipo do Imóvel', with: 'Casa na Praia'
    fill_in 'Quantidade de quartos', with: 3
    fill_in 'Máximo de pessoas', with: 10
    fill_in 'Mínimo de dias para locação', with: 2
    fill_in 'Máximo de dias para locação', with: 15
    fill_in 'Valor padrão da diária', with: 300
    fill_in 'Foto', with: 'apartamento.jpg'
    fill_in 'Descrição', with: 'Apartamento aconchegante em praia de Itanhaém'
    fill_in 'Regras de uso', with: 'Não fumar dentro do apartamento'

    click_on 'Cadastrar'

    expect(page).to have_content 'Imóvel cadastrado com sucesso'

    expect(page).to have_content 'Apartamento aconchegante na praia'
    expect(page).to have_content 'Itanhaém'
    expect(page).to have_content '70m²'
    expect(page).to have_content 'Casa na Praia'
    expect(page).to have_content '3'
    expect(page).to have_content '10'
    expect(page).to have_content '2'
    expect(page).to have_content '15'
    expect(page).to have_content 'R$ 300,00'
    expect(page).to have_content 'apartamento.jpg'
    expect(page).to have_content 'Apartamento aconchegante em praia de Itanhaém'
    expect(page).to have_content 'Não fumar dentro do apartamento'
  end

  scenario 'and fills nothing' do

    visit new_property_path

    click_on 'Cadastrar'

    expect(page).to have_content 'Você deve preencher o Título'
    expect(page).to have_content 'Você deve preencher o Local'
    expect(page).to have_content 'Você deve preencher o Tipo do Imóvel'
    expect(page).to have_content 'Você deve preencher o Valor da diária'

  end
end
