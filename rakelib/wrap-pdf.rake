require 'yaml'

desc "Wrap pdfs to build a new book from others resources"
task :wrap do
  # B: mc09 - slides
  A="releases/master/livro/wip.pdf"
  B="/home/santana/Dropbox/pigead/biblioteca/design-instrucional/mc09.pdf"
  C="/home/santana/Dropbox/pigead/3-Producao_de_Material_Didatico_\\(PMD\\)/semana1/Aula_2.pdf"
  D="/home/santana/Dropbox/pigead/biblioteca/design-instrucional/pub_odlinstdesignHB.pdf"
  E="/home/santana/Dropbox/pigead/biblioteca/design-instrucional/concebermateriais.pdf" #Instituto Nacional de Educação à Distância Conceber Materiais de Ensino Aberto e à Distância
  F="/home/santana/Dropbox/pigead/biblioteca/design-instrucional/perfil/Helping_students_make_transitions_from_year_to_year.pdf"

  OBJETIVO1 = "B1-2 B6 B9-17 C6"
  OBJETIVO2 = "D1 D10-11" + " A9-10 " + "B38-40 B42-43 B45-58 B60-61 B69-72 B96-99 D9 D46-48" +" A11-12 " + "B26 B30-36 D49-50"
  OBJETIVO3 = "B26 B30-36 D49-50"
  PERFIL = "A14-15 D52 A16 E1 E61-66 A17-18 F1 F7-8 A19-20"
  
  sh "pdftk  A=#{A} B=#{B} C=#{C} D=#{D} E=#{E} F=#{F} cat A1-6 #{OBJETIVO1} A7-8 #{OBJETIVO2} A13 #{PERFIL} A21-end output releases/master/wrap.pdf"
  sh "xdg-open releases/master/wrap.pdf"
  
  puts "PDF foi incorporado"
end

