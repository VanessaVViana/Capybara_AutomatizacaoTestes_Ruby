describe 'Alertas de JS', :alerts do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/javascript_alerts'
        page.windows[0].maximize
    end

    it 'Alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end

    it 'Sim Confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 3

    end

    it 'Não Confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3

    end

    it 'Accept Prompt', :accept_prompt do 
        accept_prompt(with: 'Vanessa Viana')do
        sleep 3
        click_button 'Prompt'
        sleep 1
        end

        expect(page).to have_content 'Olá, Vanessa Viana'
        sleep 3

    end

    it 'Dismiss Prompt', :dismiss do
        click_button 'Prompt'
        accept_prompt(with: 'Vanessa Viana')do
        page.driver.browser.switch_to.alert.dismiss
        sleep 3
        end

        
        expect(page).to have_content 'Olá, null'
        sleep 3
    end

end
