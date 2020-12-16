describe 'Caixa de Seleção', :dropdown do

        it 'Item específico simples' do
            visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
            select('Loki', from: 'dropdown')
            sleep 3 
        end

        it 'Item específico com o find' do
            visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
            drop = find('.avenger-list')
            drop.find('option', text: 'Scott Lang').select_option
            sleep 3 
        end

        it 'Qualquer Item', :sample do
            visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
            drop = find('.avenger-list')
            drop.all('option').sample.select_option
        end


end
