import UIKit

let signMeanings: [String:String] = [
    "Áries": "Áries é o signo da iniciativa e da ação. Representa coragem, determinação e um espírito competitivo, mas também pode ser impulsivo e impaciente.",
    "Touro": "Touro simboliza estabilidade, paciência e praticidade. Valoriza o conforto material e a segurança, sendo conhecido por sua lealdade e perseverança.",
    "Gêmeos": "Gêmeos é o signo da comunicação e da versatilidade. São curiosos, adaptáveis e sociáveis, mas podem ser indecisos ou dispersos.",
    "Câncer": "Câncer representa a sensibilidade e o cuidado. É um signo emocional, ligado à família e ao lar, com uma forte intuição e um instinto protetor.",
    "Leão": "Leão é o signo do carisma, da autoconfiança e da liderança. Gosta de estar no centro das atenções e tem um grande senso de orgulho e generosidade.",
    "Virgem": "Virgem é associado ao perfeccionismo, análise detalhada e organização. São práticos, trabalhadores e meticulosos, sempre buscando melhorar o ambiente ao seu redor.",
    "Libra": "Libra é o signo da diplomacia e da busca por harmonia. Valorizam relacionamentos equilibrados, justiça e a beleza em todas as formas.",
    "Escorpião": "Escorpião é intenso, misterioso e profundo. Representa transformação, poder pessoal e é conhecido por sua paixão e determinação.",
    "Sagitário": "Sagitário simboliza liberdade, otimismo e a busca por conhecimento. São aventureiros, filosóficos e sempre em busca de novas experiências e horizontes.",
    "Capricórnio": "Capricórnio é o signo da responsabilidade e da ambição. Pragmáticos e disciplinados, valorizam o sucesso e a construção de uma base sólida para o futuro.",
    "Aquário": "Aquário é inovador, original e visionário. São conhecidos por sua mente aberta, idealismo e por se preocuparem com causas humanitárias e sociais.",
    "Peixes": "Peixes é o signo da empatia, sensibilidade e imaginação. São intuitivos, compassivos e muitas vezes absorvem as emoções dos outros ao seu redor."
]

let signKeys: [String] = Array(signMeanings.keys).sorted()

print(signKeys)
