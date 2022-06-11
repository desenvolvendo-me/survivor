require 'csv'

namespace :import do
  desc "Essa tarefa realiza a importação das ~5500 cidades do brasil"
  task :cities => :environment do
    states = { SP: '35', PR: '41', SC: '42', RS: '43', MS: '50', RO: '11', AC: '12', AM: '13', RR: '14', PA: '15', AP: '16', TO: '17', MA: '21', RN: '24', PB: '25', PE: '26', AL: '27', SE: '28', BA: '29', MG: '31', RJ: '33', MT: '51', GO: '52', DF: '53', PI: '22', CE: '23', ES: '32' }

    table = CSV.parse(File.read("lib/tasks/files/municipios.csv"), headers: true)

    table.each do |row|
      uf = states.key(row["COD_UF"]).to_s
      City.find_or_create_by(description: row["NOME"], uf: uf)
    end

  end
end