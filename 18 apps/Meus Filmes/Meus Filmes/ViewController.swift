//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Michelly Nonato on 10/10/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var movie: Movie
        
        movie = Movie(title: "007 - Spectre", description: "James Bond enfrenta uma organização sombria conhecida como Spectre, enquanto tenta descobrir segredos de seu próprio passado.", image: UIImage(named: "filme1")!)
        movies.append(movie)
        
        movie = Movie(title: "Star Wars", description: "Na galáxia distante, a luta entre o bem e o mal se intensifica enquanto os rebeldes enfrentam o império liderado por Darth Vader.", image: UIImage(named: "filme2")!)
        movies.append(movie)
        
        movie = Movie(title: "Impacto Mortal", description: "Em um futuro devastado, um ex-soldado busca vingança contra um criminoso implacável que destruiu sua vida.", image: UIImage(named: "filme3")!)
        movies.append(movie)
        
        movie = Movie(title: "Deadpool", description: "O mercenário tagarela Wade Wilson busca vingança após uma experiência que lhe dá habilidades sobre-humanas e um senso de humor sarcástico.", image: UIImage(named: "filme4")!)
        movies.append(movie)
        
        movie = Movie(title: "O Regresso", description: "Baseado em uma história real, um caçador de peles gravemente ferido é deixado para morrer por seus companheiros, mas luta pela sobrevivência e busca vingança.", image: UIImage(named: "filme5")!)
        movies.append(movie)
        
        movie = Movie(title: "A Herdeira", description: "Uma jovem herdeira descobre segredos sombrios de sua família e precisa decidir entre seu legado e sua própria felicidade.", image: UIImage(named: "filme6")!)
        movies.append(movie)
        
        movie = Movie(title: "Caçadores de emoção", description: "Um jovem agente do FBI se infiltra em um grupo de assaltantes que buscam emoção em esportes radicais e se vê dividido entre sua lealdade e o dever.", image: UIImage(named: "filme7")!)
        movies.append(movie)
        
        movie = Movie(title: "Regresso do Mal", description: "Quando uma entidade maligna retorna para assombrar uma cidade, um grupo de moradores precisa se unir para enfrentar o terror.", image: UIImage(named: "filme8")!)
        movies.append(movie)
        
        movie = Movie(title: "Tarzan", description: "Criado na selva por gorilas, Tarzan é forçado a enfrentar seu passado e o mundo dos humanos ao ser chamado de volta à civilização.", image: UIImage(named: "filme9")!)
        movies.append(movie)
        
        movie = Movie(title: "Hardcore", description: "Contado em primeira pessoa, um homem ressuscitado como um ciborgue deve resgatar sua esposa de um vilão telecinético enquanto enfrenta inimigos implacáveis.", image: UIImage(named: "filme10")!)
        movies.append(movie)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieEncapsulation: Movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForMovies", for: indexPath) as! MovieCell
        
        cell.movieImage.image = movieEncapsulation.image
        cell.movieTitle.text = movieEncapsulation.title
        cell.movieDescription.text = movieEncapsulation.description
        
        cell.movieImage.layer.cornerRadius = 42
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDescription" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movieSelected = self.movies[indexPath.row]
                let viewDestination = segue.destination as! MovieDetailsViewController
                viewDestination.movie = movieSelected
            }
        }
    }
}

