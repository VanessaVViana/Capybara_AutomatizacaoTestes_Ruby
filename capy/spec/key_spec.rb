describe 'Teclado', :key do
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'Enviando Teclas' do

        teclas = %i[tab escape space enter shift control alt]
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 2
        end
    end

    it 'Enviando Letras' do

        teclas = %w[v a n e s s a]
        teclas.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end

    sleep 3
end
