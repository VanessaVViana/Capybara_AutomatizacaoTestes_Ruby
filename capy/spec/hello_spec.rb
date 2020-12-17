describe 'Meu primeiro script' do

    it 'Visitar a página' do
        visit "http://training-wheels-protocol.herokuapp.com/"
        sleep 5
        expect(page.title).to eql "Training Wheels Protocol"
    end
end
