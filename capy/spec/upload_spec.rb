describe 'Upload', :upload do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/Tim-Burton.jpg'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        attach_file('file-upload', @imagem)
        # click_on('file-submit')
        click_button 'file-submit'
    end

    sleep 4

    after(:each) do
    end

end

