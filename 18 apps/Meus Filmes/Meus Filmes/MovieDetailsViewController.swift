//
//  MovieDetailsViewController.swift
//  Meus Filmes
//
//  Created by Michelly Nonato on 18/10/24.
//

import Foundation
import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie: Movie!
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie.title
        movieDescription.text = movie.description
        movieImage.image = movie.image
    }
    
}
