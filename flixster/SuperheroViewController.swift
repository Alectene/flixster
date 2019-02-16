//
//  SuperheroViewController.swift
//  flixster
//
//  Created by Alec Tenefrancia on 2/13/19.
//  Copyright © 2019 Alec Tenefrancia. All rights reserved.
//

import UIKit
import AlamofireImage


class SuperheroViewController: UIViewController {

    @IBOutlet weak var backdrop1View: UIImageView!
    @IBOutlet weak var poster1View: UIImageView!
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var synopsis1Label: UILabel!
    
    
    
    
    
    var movie: [String:Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title1Label.text = movie["title"] as? String
        title1Label.sizeToFit()
         synopsis1Label.text = movie["overview"] as?String
        synopsis1Label.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath )
        poster1View.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string:"https://image.tmdb.org/t/p/w780" + backdropPath )
        backdrop1View.af_setImage(withURL: backdropUrl!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      */
        
    }
    


