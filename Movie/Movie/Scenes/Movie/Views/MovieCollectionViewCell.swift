//
//  MovieCollectionViewCell.swift
//  Movie
//
//  Created by VICTOR HUGO MAGNANI on 17/08/19.
//  Copyright © 2019 Victor Magnani. All rights reserved.
//

import UIKit
import Nuke

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView! {
        didSet{
            movieImageView.applyDropshadow()
        }
    }
    @IBOutlet weak var labelMovieName: UILabel!
    
    var movie: Movie? {
        didSet {
            guard let movie = movie else { return }
            let url = MovieAPIClient.imageURL(with: movie.posterPath)
            Nuke.loadImage(with: url, options: ImageLoadingOptions(transition: ImageLoadingOptions.Transition.fadeIn(duration: 0.5)), into: movieImageView)
            labelMovieName.text = movie.title
        }
    
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        movieImageView.image = nil
    }
}
