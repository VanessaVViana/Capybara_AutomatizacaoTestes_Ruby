describe 'Forms' do

    it 'Login com Sucesso' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'
        sleep 5
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    # it 'Senha Incorreta' do
    #     visit 'http://training-wheels-protocol.herokuapp.com/login'
        
    #     fill_in 'username', with: 'stark'
    #     fill_in 'password', with: 'jarvi'

    #     click_button 'Login'
    #     sleep 5
    #     expect(find('#flash').visible?).to be true
    #     expect(find('#flash')).to have_content 'Senha é invalida!'
    # end

    # it 'Usuário não cadastrado' do
    # visit 'http://training-wheels-protocol.herokuapp.com/login'
        
    # fill_in 'username', with: 'star'
    # fill_in 'password', with: 'jarvi'

    # click_button 'Login'
    # sleep 2
    # expect(find('#flash').visible?).to be true
    # expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    # end


end
