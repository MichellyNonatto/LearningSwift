// ViewController.swift
// Signos
//
// Created by Michelly Nonato on 08/10/24.
//
import UIKit

class ViewController: UITableViewController {

    private var signMeanings: [(String, String)] = []
    private var signImages: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        signMeanings = [
            ("Áries", "Áries é o signo da iniciativa e da ação. Representa coragem, determinação e um espírito competitivo, mas também pode ser impulsivo e impaciente.\n(21 de março a 19 de abril)"),
            ("Touro", "Touro simboliza estabilidade, paciência e praticidade. Valoriza o conforto material e a segurança, sendo conhecido por sua lealdade e perseverança.\n(20 de abril a 20 de maio)"),
            ("Gêmeos", "Gêmeos é o signo da comunicação e da versatilidade. São curiosos, adaptáveis e sociáveis, mas podem ser indecisos ou dispersos.\n(21 de maio a 20 de junho)"),
            ("Câncer", "Câncer representa a sensibilidade e o cuidado. É um signo emocional, ligado à família e ao lar, com uma forte intuição e um instinto protetor.\n(21 de junho a 22 de julho)"),
            ("Leão", "Leão é o signo do carisma, da autoconfiança e da liderança. Gosta de estar no centro das atenções e tem um grande senso de orgulho e generosidade.\n(23 de julho a 22 de agosto)"),
            ("Virgem", "Virgem é associado ao perfeccionismo, análise detalhada e organização. São práticos, trabalhadores e meticulosos, sempre buscando melhorar o ambiente ao seu redor. (23 de agosto a 22 de setembro)"),
            ("Libra", "Libra é o signo da diplomacia e da busca por harmonia. Valorizam relacionamentos equilibrados, justiça e a beleza em todas as formas.\n(23 de setembro a 22 de outubro)"),
            ("Escorpião", "Escorpião é intenso, misterioso e profundo. Representa transformação, poder pessoal e é conhecido por sua paixão e determinação.\n(23 de outubro a 21 de novembro)"),
            ("Sagitário", "Sagitário simboliza liberdade, otimismo e a busca por conhecimento. São aventureiros, filosóficos e sempre em busca de novas experiências e horizontes.\n(22 de novembro a 21 de dezembro)"),
            ("Capricórnio", "Capricórnio é o signo da responsabilidade e da ambição. Pragmáticos e disciplinados, valorizam o sucesso e a construção de uma base sólida para o futuro.\n(22 de dezembro a 19 de janeiro)"),
            ("Aquário", "Aquário é inovador, original e visionário. São conhecidos por sua mente aberta, idealismo e por se preocuparem com causas humanitárias e sociais.\n(20 de janeiro a 18 de fevereiro)"),
            ("Peixes", "Peixes é o signo da empatia, sensibilidade e imaginação. São intuitivos, compassivos e muitas vezes absorvem as emoções dos outros ao seu redor.\n(19 de fevereiro a 20 de março)")
        ]


        signImages = [
            UIImage(named: "aries")!,
            UIImage(named: "touro")!,
            UIImage(named: "gemeos")!,
            UIImage(named: "cancer")!,
            UIImage(named: "leao")!,
            UIImage(named: "virgem")!,
            UIImage(named: "libra")!,
            UIImage(named: "escorpiao")!,
            UIImage(named: "sagitario")!,
            UIImage(named: "capricornio")!,
            UIImage(named: "aquario")!,
            UIImage(named: "peixes")!
        ]

        tableView.register(SignCell.self, forCellReuseIdentifier: "SignCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signMeanings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SignCell", for: indexPath) as! SignCell

        let sign = signMeanings[indexPath.row]
        cell.signLabel.text = sign.0
        cell.signImageView.image = signImages[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let sign = signMeanings[indexPath.row]

        let alertController = UIAlertController(title: sign.0, message: sign.1, preferredStyle: .alert)

        let actionConfirm = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(actionConfirm)

        present(alertController, animated: true, completion: nil)
    }
}


class SignCell: UITableViewCell {
    let signImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let signLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(signImageView)
        contentView.addSubview(signLabel)

        NSLayoutConstraint.activate([
            signImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            signImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            signImageView.widthAnchor.constraint(equalToConstant: 40),
            signImageView.heightAnchor.constraint(equalToConstant: 40),

            signLabel.leadingAnchor.constraint(equalTo: signImageView.trailingAnchor, constant: 10),
            signLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            signLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
