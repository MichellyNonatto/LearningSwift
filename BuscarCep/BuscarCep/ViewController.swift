import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cepInput: UITextField!
    @IBOutlet weak var cepTable: UITableView!
    
    var cidade = ["País", "Estado", "Cidade", "Bairro", "Rua"]
    var dadosCEP: [String] = ["", "", "", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cepTable.delegate = self
        cepTable.dataSource = self
        
        // Registre a célula
        cepTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func getCepValue(_ sender: UIButton) {
        if let cepText = cepInput.text, !cepText.isEmpty, cepText.count == 8, Int(cepText) != nil {
            buscarCEP(cep: cepText)
        } else {
            showAlert(message: "Por favor, informe um CEP válido com 8 dígitos.")
        }
    }
    
    func buscarCEP(cep: String) {
        let urlString = "https://viacep.com.br/ws/\(cep)/json/"
        
        guard let url = URL(string: urlString) else {
            showAlert(message: "URL inválida.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.showAlert(message: "Erro ao buscar o CEP.")
                }
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    let pais = "Brasil" // Dados do ViaCEP não incluem país
                    let estado = json["uf"] as? String ?? ""
                    let cidade = json["localidade"] as? String ?? ""
                    let bairro = json["bairro"] as? String ?? ""
                    let rua = json["logradouro"] as? String ?? ""
                    
                    self.dadosCEP = [pais, estado, cidade, bairro, rua]
                    
                    DispatchQueue.main.async {
                        self.cepTable.reloadData()
                    }
                }
            } catch {
                DispatchQueue.main.async {
                    self.showAlert(message: "Erro ao processar os dados do CEP.")
                }
            }
        }
        
        task.resume()
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(
            title: "Erro ao procurar o CEP",
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction (
            title: "Ok",
            style: .default,
            handler: nil
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cidade.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cepTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(cidade[indexPath.row]): \(dadosCEP[indexPath.row])"
        return cell
    }
}
