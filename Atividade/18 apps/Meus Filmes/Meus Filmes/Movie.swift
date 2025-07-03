//
//  ModelViewlModel.swift
//  Meus Filmes
//
//  Created by Michelly Nonato on 10/10/24.
//

import UIKit


class Movie {
    public var title: String!
    public var description: String!
    public var image: UIImage!
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}
