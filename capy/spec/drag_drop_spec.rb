describe 'Drag and Drop', :drag do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Arrastando o Homem Aranha' do
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')
        
        spiderman = find('img[alt*=Aranha]')
        spiderman.drag_to stark

        sleep 5

        expect(stark).to have_css 'img[alt*=Aranha]'
        expect(cap).not_to have_css 'img[alt*=Aranha]'
    end

end
