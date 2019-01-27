//
//  MovieDetailsViewController.swift
//  Fresh Tomatoes
//
//  Created by jeremy on 1/23/19.
//  Copyright © 2019 Jeremy Chang. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterView: UIImageView!
    @IBOutlet var backdropView: UIImageView!
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + "185" + posterPath)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + "780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        posterView.af_setImage(withURL: posterUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
