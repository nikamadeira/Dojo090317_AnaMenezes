Dado(/^Buscar o site da UOL através do google$/) do                           
  visit 'http://www.google.com.br'
  fill_in "q", :with => "UOL"
  find(:id, 'lst-ib').native.send_keys(:return)

  #click_button('btnG')
end                                                                           
                                                                              
Quando(/^Acessar a página da UOL$/) do
  find(:xpath,'//*[@id="rso"]/div[1]/div/div/div/h3/a').click
end

Quando(/^Buscar a página de economia$/) do
#	binding.pry
  find('a.menu-uol-estacao.bg2-hover.canal-economia').click
end


Então(/^Consultar o valor do dolar$/) do                                      
  	bloco_texto = find(:xpath,'//*[@id="cambio"]/ul/li[1]/p[2]').text
	puts bloco_texto

	# Separate chars.
	array = bloco_texto.split ""

	# Write length.
	# puts array.length

	# Write elements.
	print array	#[10..15]
	dolar = bloco_texto[10..-1]
	#puts dolar

	#change elements
	dolar = dolar.gsub(",", ".") 
	
	#convert format
	dolar = dolar.to_f

	#write value
	puts dolar

	#Compare
	if dolar <= 3.20
	then
		puts 'Encerrei com sucesso! ;)' 
	else 
		puts 'Quebrei! kkkk'
	end  

end                                                                         