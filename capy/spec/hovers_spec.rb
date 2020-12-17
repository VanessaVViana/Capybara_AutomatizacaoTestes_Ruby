describe 'Mouse Hover', :hover do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'Quando passo o mouse sobre os cards' do
        card = find('img[alt="Blade"]')
        card.hover
        expect(page).to have_content 'Nome: Blade'

        card = find('img[alt="Pantera Negra"]')
        card.hover
        expect(page).to have_content 'Nome: Pantera Negra'

        card = find('img[alt="Homem Aranha"]')
        card.hover
        expect(page).to have_content 'Nome: Homem Aranha'
    
    end

    after(:each) do
        sleep 3
    end

end
