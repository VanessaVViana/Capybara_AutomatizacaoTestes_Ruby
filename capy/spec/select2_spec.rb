describe 'Select2', :select2 do
    
    describe('single') do

        before(:each) do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'Selecionando ator pelo Nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 5
        end

        it 'Selecionando 2º ator pelo Nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Jim Carrey').click
            find('button', text: 'Liga/Desliga').click
            sleep 5
        end

    end

    describe('multiple', :multi) do

            before(:each) do
                visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
            end

            def selecione(ator)
                find('.select2-selection--multiple').click
                find('.select2-search__field').set ator
                find('.select2-results__option').click
            
            end

            it 'Selecionar Atores' do
                
                atores = ['Jim Carrey', 'Adam Sandler', 'Kevin James']

                atores.each do |a|
                    selecione(a)
                end

                    sleep 5
            end

        
    end

end