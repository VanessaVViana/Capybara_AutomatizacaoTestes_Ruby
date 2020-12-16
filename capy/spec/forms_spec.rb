describe 'Forms' do

    it 'Login com Sucesso' do

        visit 'http://training-wheels-protocol.herokuapp.com/login2'
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        fill_in 'bday', with: '29/05/1970'
    end

end
